#!/bin/bash

########################################
# We only work with this directory structure
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
pushd $DIR

SPEC_BASE_URL="https://554b0f7e-4f66-4969-8bd9-6f6aecd06e25.rally-here.io"
APIS="users ad settings friends session config inventory presence notification rank custom events match sanctions file guide stage leaderboard"

# APIs that may legitimately not be served by the environment we generate from. A failure to
# download one of these keeps the committed schema instead of failing the run; any other API
# failing to download is fatal, so a bad download can never be committed as the new spec.
OPTIONAL_APIS=""

# Pin the merge tool. Unpinned, `npx` takes whatever npm serves, and the 1.x -> 2.x jump changes
# the merged output. See the merge step below.
OPENAPI_MERGE_CLI_VERSION="2.0.2"

SKIP_DOWNLOAD=false
SKIP_MERGE=false
SKIP_CHANGELOG=false
SKIP_CHECK_BREAKING=false

########################################
POSITIONAL_ARGS=()
while [[ $# -gt 0 ]]; do
  case $1 in
    -u|--environment-base-url)
      SPEC_BASE_URL="$2"
      shift # past argument
      shift # past value
      ;;
    --skip-download)
      SKIP_DOWNLOAD=true
      shift # past argument
      ;;
    --skip-merge)
      SKIP_MERGE=true
      shift # past argument
      ;;
    --skip-changelog)
      SKIP_CHANGELOG=true
      shift # past argument
      ;;
    --skip-check-breaking)
      SKIP_CHECK_BREAKING=true
      shift # past argument
      ;;
      -a|--api-list)
      APIS="$2"
      shift # past argument
	  shift # past value
      ;;
    --optional-apis)
      OPTIONAL_APIS="$2"
      shift # past argument
      shift # past value
      ;;
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;
    *)
      POSITIONAL_ARGS+=("$1") # save positional arg
      shift # past argument
      ;;
  esac
done
set -- "${POSITIONAL_ARGS[@]}" # restore positional parameters

########################################
# Download the API Specs
if [[ ! -z "$SPEC_BASE_URL" && "$SKIP_DOWNLOAD" = false ]]; then
    echo "Using baseurl ${SPEC_BASE_URL}"

    FAILED_APIS=()
    FAILED_REASONS=()

    for api in ${APIS[@]}; do
        # download the schema
        echo "Downloading ${api} API Spec"
        HTTP_CODE=$(curl -sS -w '%{http_code}' -o "schemas/${api}.tmp" "${SPEC_BASE_URL}/${api}/openapi.json") || HTTP_CODE="000"

        if [[ "$HTTP_CODE" != "200" ]]; then
            # An error body ("404", an HTML page) is not a spec. Leave the committed schema alone.
            echo "ERROR: ${api} returned HTTP ${HTTP_CODE}"
            rm -f "schemas/${api}.tmp"
            FAILED_APIS+=("${api}")
            FAILED_REASONS+=("HTTP ${HTTP_CODE}")
            continue
        fi

        # `jq -r .` alone accepts any valid JSON, including the bare scalar `404` that a 404 body
        # parses as, so check the shape rather than just the parse.
        if ! jq -e 'type == "object" and has("paths")' "schemas/${api}.tmp" >/dev/null 2>&1; then
            echo "ERROR: ${api} response is not an OpenAPI document"
            rm -f "schemas/${api}.tmp"
            FAILED_APIS+=("${api}")
            FAILED_REASONS+=("not an OpenAPI document")
            continue
        fi

        # convert schema into destination - only now that we know the download is good
        echo "Pretty Printing ${api} API Spec"
        jq -r . "schemas/${api}.tmp" >"schemas/${api}.json"
        rm -f "schemas/${api}.tmp"
    done

    if [[ ${#FAILED_APIS[@]} -gt 0 ]]; then
        FATAL=false
        echo ""
        for i in "${!FAILED_APIS[@]}"; do
            api="${FAILED_APIS[$i]}"
            reason="${FAILED_REASONS[$i]}"
            if [[ " ${OPTIONAL_APIS} " == *" ${api} "* ]]; then
                echo "WARNING: ${api} could not be downloaded (${reason}); keeping the committed schemas/${api}.json"
            else
                echo "ERROR: ${api} could not be downloaded (${reason})"
                FATAL=true
            fi
        done
        if [[ "$FATAL" = true ]]; then
            echo ""
            echo "Refusing to generate a spec from an incomplete download."
            echo "If an API is intentionally not served by ${SPEC_BASE_URL}, pass it via --optional-apis."
            exit 1
        fi
    fi
fi

########################################
# Run the merge process of the separate API specs
if [[ "$SKIP_MERGE" = false ]]; then
    # Pinned deliberately, and re-pin only with the output diff reviewed. 2.x decides two
    # components are identical more strictly than 1.x: the base schema declares
    # HTTPBearerHeadersOrCookie with a description and each service declares it without, which 1.3.2
    # merged into one scheme and 2.x treats as a conflict, emitting one prefixed copy per input
    # (AdHTTPBearerHeadersOrCookie, ConfigHTTPBearerHeadersOrCookie, ...) and changing the scheme
    # every generated client binds to. securitySchemesStrategy in the merge config keeps the single
    # shared scheme; see the note there.
    npx -y openapi-merge-cli@${OPENAPI_MERGE_CLI_VERSION} --config environment-openapi-merge-config.json
    echo "$(jq -c . environment.openapi.json)" > environment.openapi.min.json
fi

########################################
# Generate changelog of newly generated changes
if [[ "$SKIP_CHANGELOG" = false ]]; then
    ./update_changelog.bash
fi

########################################
# Print any breaking changes to the console
if [[ "$SKIP_CHECK_BREAKING" = false ]]; then
    ./check_breaking.bash
fi

popd

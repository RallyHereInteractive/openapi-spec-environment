#!/bin/bash

########################################
# We only work with this directory structure
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
pushd $DIR

SPEC_BASE_URL="https://554b0f7e-4f66-4969-8bd9-6f6aecd06e25.rally-here.io"
APIS="users ad settings friends session config inventory presence notification rank custom events match sanctions file"

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

    for api in ${APIS[@]}; do
        # download the schema
        echo "Downloading ${api} API Spec"
        curl "${SPEC_BASE_URL}/${api}/openapi.json" -o schemas/${api}.tmp

        # make sure the schema we are about to generate is deleted before generating it
        rm -f "schemas/${api}.json"

        # convert schema into destination
        echo "Pretty Printing ${api} API Spec"
        echo "$(jq -r . schemas/${api}.tmp)" >"schemas/${api}.json"
        rm schemas/${api}.tmp
    done
fi

########################################
# Run the merge process of the separate API specs
if [[ "$SKIP_MERGE" = false ]]; then
    npx openapi-merge-cli --config environment-openapi-merge-config.yaml
    echo "$(jq -c . environment.openapi.json)" > environment.openapi.min.json
fi

########################################
# Update the openapi version based on environment-openapi-base-schema.json
if [[ "$SKIP_MERGE" = false ]]; then
    VERSION=$(jq -r '.openapi' environment-openapi-base-schema.json)
    jq --arg VERSION "$VERSION" '.openapi = $VERSION' environment.openapi.json > tmp.json && mv tmp.json environment.openapi.json
    jq -c --arg VERSION "$VERSION" '.openapi = $VERSION' environment.openapi.json > environment.openapi.min.json
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

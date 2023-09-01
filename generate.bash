#!/bin/bash

########################################
# We only work with this directory structure
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
pushd $DIR

SPEC_BASE_URL="https://554b0f7e-4f66-4969-8bd9-6f6aecd06e25.rally-here.io"

########################################
POSITIONAL_ARGS=()
while [[ $# -gt 0 ]]; do
  case $1 in
    -u|--environment-base-url)
      SPEC_BASE_URL="$2"
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
if [[ ! -z "$SPEC_BASE_URL" ]]; then
    rm -rf schemas
    mkdir -p schemas
    curl "${SPEC_BASE_URL}/users/openapi.json" -o schemas/users.tmp
    curl "${SPEC_BASE_URL}/ad/openapi.json" -o schemas/ad.tmp
    curl "${SPEC_BASE_URL}/settings/openapi.json" -o schemas/settings.tmp
    curl "${SPEC_BASE_URL}/friends/openapi.json" -o schemas/friends.tmp
    curl "${SPEC_BASE_URL}/session/openapi.json" -o schemas/session.tmp
    curl "${SPEC_BASE_URL}/config/openapi.json" -o schemas/config.tmp
    curl "${SPEC_BASE_URL}/inventory/openapi.json" -o schemas/inventory.tmp
    curl "${SPEC_BASE_URL}/presence/openapi.json" -o schemas/presence.tmp
    curl "${SPEC_BASE_URL}/notification/openapi.json" -o schemas/notification.tmp
    curl "${SPEC_BASE_URL}/rank/openapi.json" -o schemas/rank.tmp
    curl "${SPEC_BASE_URL}/custom/openapi.json" -o schemas/custom.tmp

    ########################################
    # Pretty Print the API Specs
    for filename in schemas/*.tmp; do
        outfile=$(echo ${filename} | sed -e 's/\.tmp/\.json/')
        echo "$(jq -r . ${filename})" >"${outfile}"
    done
    rm schemas/*.tmp
fi

########################################
# Run the merge process of the separate API specs
npx openapi-merge-cli --config environment-openapi-merge-config.yaml

echo "$(jq -c . environment.openapi.json)" > environment.openapi.min.json

popd

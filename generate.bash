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

    APIS="users ad settings friends session config inventory presence notification rank custom"

    for api in ${APIS[@]}; do
        echo "Downloading ${api} API Spec"
        curl "${SPEC_BASE_URL}/${api}/openapi.json" -o schemas/${api}.tmp

        echo "Pretty Printing ${api} API Spec"
        echo "$(jq -r . schemas/${api}.tmp)" >"schemas/${api}.json"
        rm schemas/${api}.tmp
    done
fi

########################################
# Run the merge process of the separate API specs
npx openapi-merge-cli --config environment-openapi-merge-config.yaml
echo "$(jq -c . environment.openapi.json)" > environment.openapi.min.json

########################################
# Generate changelog of newly generated changes
./update_changelog.bash

########################################
# Generate changelog of newly generated changes
./check_breaking.bash

popd

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
    APIS="users ad settings friends session config inventory presence notification rank"

    for api in ${APIS[@]}; do
        mkdir -p "schemas/${api}/min"
        echo "Downloading ${api} API Spec"
        curl "${SPEC_BASE_URL}/${api}/openapi.json" -o schemas/${api}/min/openapi.json

        echo "Pretty Printing ${api} API Spec"
        echo "$(jq -r . schemas/${api}/min/openapi.json)" >"schemas/${api}/openapi.json"
    done
fi

########################################
# Run the merge process of the separate API specs
npx openapi-merge-cli --config environment-openapi-merge-config.yaml

mkdir -p min
echo "$(jq -c . openapi.json)" > min/openapi.json

popd

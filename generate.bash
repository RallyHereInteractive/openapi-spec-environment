#!/bin/bash

########################################
# We only work with this directory structure
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
pushd $DIR

SPEC_BASE_URL="https://platform-dev-api.roguecompany.com"

########################################
# Check flag params
while getopts ":u:" opt; do
    case "${opt}" in
    u) SPEC_BASE_URL=$OPTARG ;;
    esac
done

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
npx openapi-merge-cli --config sandbox-openapi-merge-config.yaml

popd

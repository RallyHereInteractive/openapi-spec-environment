#!/bin/bash


APIS="users ad settings friends session config inventory presence notification rank custom"

for api in ${APIS[@]}; do
    echo "Checking ${api} API Spec"
    oasdiff breaking https://raw.githubusercontent.com/RallyHereInteractive/openapi-spec-environment/main/schemas/${api}.json schemas/${api}.json
done


oasdiff breaking https://raw.githubusercontent.com/RallyHereInteractive/openapi-spec-environment/main/schemas/users.json schemas/users.json
oasdiff breaking https://raw.githubusercontent.com/RallyHereInteractive/openapi-spec-environment/main/schemas/session.json schemas/session.json
#!/bin/bash

# General prereqs
sudo apt install jq npm curl
sudo snap install yq

# Install the latest version of oasdiff
curl -s "https://api.github.com/repos/Tufin/oasdiff/releases/latest" | \
    jq -r '.assets[] | select(.name | endswith("_linux_amd64.deb")) | .browser_download_url' | \
    xargs curl -L -o oasdiff_latest_amd64.deb
sudo dpkg --install oasdiff_latest_amd64.deb
rm oasdiff_latest_amd64.deb

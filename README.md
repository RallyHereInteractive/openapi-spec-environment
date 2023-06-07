# RallyHere Sandbox APIs - OpenAPI Spec

This repo is for merging the various RallyHere Sandbox OpenAPI spec files into a single Sandbox OpenAPI spec.

## Installing WSL2 for Windows to be able to run Ubuntu
1. Install [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=en-us&gl=us&rtc=1) from MS Store
2. Run Terminal as Administrator
3. In the prompt, run `wsl --install -d Ubuntu`
4. Once it completes, reboot
5. Run Terminal, if it does not autorun
6. Create a Ubuntu terminal if it does not auto popup as part of the reboot
7. Let Ubuntu finish installing, which takes a few minutes

## How to Install Depedencies for Ubuntu
```
sudo apt update
sudo apt install openjdk-8-jdk jq npm
```

## How do I add a new API?
1. Edit the `generate.bash` file with the URL to download your OpenAPI spec file from.  You can find it in the "Download the API Specs" section
2. Edit the `sandbox-openapi-merge-config.yaml` file to include your new spec file, and the configuration for how to merge it with other spec files.
3. Run `generate.bash`

## generate.bash

Script that does the work of running all generators
1. download the latest versions of the OpenAPI specs for each of the RallyHere Sandbox APIs to the `schemas` directory
2. Merge all the OpenAPI specs into a single spec file in `sandbox.openapi.json`

## `schemas` directory

This contains the base openapi spec files for all RallyHere APIs.  These are merged into the above file.

## `sandbox.openapi.json` file

This is the final openapi spec for the RallyHere APIs as a single file.

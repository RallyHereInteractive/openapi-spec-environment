# RallyHere Environment APIs - OpenAPI Spec

This repo is for merging the various RallyHere Environment OpenAPI spec files into a single Environment OpenAPI spec.

### `environment.openapi.json` file

This is the final openapi spec for the RallyHere APIs as a single file.  If you are here to get the latest version of the RallyHere OpenAPI Spec, this file is all you need.  [Raw version can be found here](https://github.com/RallyHereInteractive/openapi-spec-environment/blob/main/environment.openapi.json)


### `schemas` directory

This directory contains the base openapi spec files for all RallyHere environment APIs.  These are merged into the above openapi.json file and are provided for tracking purposes.

---

## Generating the spec file

The rest of this document is instructions and notes for running the generation of the `environment.openapi.json` file using this repo.

### Windows Devs - Installing WSL2 for Windows to be able to run Ubuntu
1. Install [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=en-us&gl=us&rtc=1) from MS Store
2. Run Terminal as Administrator
3. In the prompt, run `wsl --install -d Ubuntu`
4. Once it completes, reboot
5. Run Terminal, if it does not autorun
6. Create a Ubuntu terminal if it does not auto popup as part of the reboot
7. Let Ubuntu finish installing, which takes a few minutes

### How to Install Dependencies
```
./install_deps.bash
```

### How do I add a new API?

1. Edit the `generate.bash` file with the API name.  That should be a path after the base URL to download your OpenAPI spec file from.  You can find the list of APIs in the "Download the API Specs" section
2. Edit the `environment-openapi-merge-config.yaml` file to include your new spec file, and the configuration for how to merge it with other spec files.
3. Run `generate.bash`

### Using `generate.bash`

This script does the following:

1. Downloads the latest versions of the OpenAPI specs for each of the RallyHere Environment APIs to the `schemas` directory
2. Merge all the OpenAPI specs into a single spec file in `environment.openapi.json`

| Parameter | Optional | Description |
| ---- | --- | --- |
| `-u` | Yes | Override the environment base URL used when generating the spec |
|  `--environment-base-url` | Yes | Override the environment base URL used when generating the spec |
| `-a` | Yes | Override the list of APIs to regenerate (only downloads the specified list, but will still use local files for merging) |
|  `--api-list` | Yes | Override the list of APIs to regenerate (only downloads the specified list, but will still use local files for merging) |
| `--skip-download` | Yes | Skip the download phase, and just use local files |
| `--skip-merge` | Yes | Skip merging the individual specs into a single environment file |
| `--skip-changelog` | Yes | Skip the changelog generation |
| `--skip-check-breaking` | Yes | Skip checking for breaking changes |
| `--skip-check-breaking` | Yes | Skip checking for breaking changes |


### Breaking Changes

The `check_breaking.bash` script will compare locally updated spec files against the latest from this repository to check for any breaking changes.

If you need to check individual APIs for breakage, the `check_breaking_individual.bash` script will iterate each spec file and run a similar comparison.

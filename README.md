# Build with MPLABX Github Actions

This action to build a MPLAB X project by using XC16 compiler
It runs on Linux Ubuntu 18.04 and uses:

- MPLAB 5.50
- xc16 v1.70

## Inputs

### `project-path`

**Required** A path to the project to build (relative to the repository). Default: `firmware`

### `configuration`

A configuration of the project to build. Default: `build`.

## Outputs

None.

## Example usage

Add the following `.github/workflows/build.yml` file to your project:

```yaml
name: Build
on: [push]

jobs:
  build:
    name: Build project
    runs-on: ubuntu-latest
    steps:
      - name: Download source
        uses: actions/checkout@v2

      - name: Build MPLAB X project
        uses: PietroLubini/actions-mplabx-xc16@v1'
        with:
          project-path: firmware
          configuration: build
```
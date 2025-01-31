[![Dependabot status](https://api.dependabot.com/badges/status?host=github&repo=antonnguyen/golangci-lint-action)](https://dependabot.com/)

# GolangCI-Lint Action
This Action runs [GolangCI-Lint](https://github.com/golangci/golangci-lint) on your [Go](https://golang.org/) code and adds optional annotations to the check.

## Usage

Checkout
```YAML
- name: Check out code into the Go module directory
  uses: actions/checkout@v1
```
Use by building from repository
```YAML
- name: Run GolangCI-Lint Action by building from repository
  uses: antonnguyen/golangci-lint-action@v1
```
Use by pulling pre-built image *(faster execution time, less secure)*
```YAML
- name: Run GolangCI-Lint Action by pulling pre-built image
  uses: docker://antonnguyen/golangci-lint-action:v1.0.0
```
Configuration
```YAML
  with:
    # Path to your GolangCI-Lint config within the repo (optional)
    config: .golangci.yml
  env:
    # GitHub token for annotations (optional)
    GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

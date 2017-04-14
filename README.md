# go-vendorinstall

Install go binaries from `vendor` dependencies.

## About

Vendoring works well enough for managing external dependencies, but the tooling suffers when it comes to installing binaries based on vendored dependencies. In addition to the benefits of having a self contained repository, it is often necessary to match binary versions to imported package version, e.g. code generators.

`go-vendorinstall` creates a temporary `GOPATH`, symlinks your vendored dependencies, and performs `go install` with `GOBIN` set to your default `$GOPATH/bin` so binaries end up on your `PATH` (`-source` and `-target` are configurable).

## Install

`go-vendorinstall` has no dependencies. Install with `go get`.

For a zero-dependency setup, copy `main.go` into your own repo and `go install`.

## Usage

`go-vendorinstall [-quiet] [-source ./vendor] [-target /usr/local/bin] {packages...}`

```
Usage of go-vendorinstall:
  -quiet
    	disable output
  -source string
    	source directory (default "vendor")
  -target string
    	target directory (default "$GOPATH/bin")
```

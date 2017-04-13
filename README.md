# go-vendorinstall [![CircleCI](https://circleci.com/gh/roboll/go-vendorinstall.svg?style=svg)](https://circleci.com/gh/roboll/go-vendorinstall)

Install go binaries from `vendor` dependencies.

## About

Vendoring works well enough for managing external dependencies, but the tooling suffers when it comes to installing binaries based on vendored dependencies. In addition to the benefits of having a self contained repository, it is often necessary to match binary versions to imported package version, e.g. code generators.

`go-vendorinstall` creates a temporary `GOPATH`, symlinks your vendored dependencies, and performs `go install` with `GOBIN` set to your default `$GOPATH/bin` so binaries end up on your `PATH` (`-source` and `-target` are configurable). For extra commands (`commands`), `target` is added to the path.

## Install

`go-vendorinstall` is a single package with no dependencies.

Install with `go get`, or for a zero-dependency setup, copy or vendor `main.go` into your own repo. (`go install github.com/someone/someproject/vendor/github.com/roboll/go-vendorinstall` works)

## Usage

`go-vendorinstall [-quiet] [-source ./vendor] [-target /usr/local/bin] [-commands "gometalinter --install,echo hello world"] {packages...}`

```
Usage of go-vendorinstall:
  -commands string
    	comma separated list of commands to execute after go install in temporary environment
  -quiet
    	disable output
  -source string
    	source directory (default "vendor")
  -target string
    	target directory (defaults to $GOPATH/bin) (default "$GOPATH/bin")
```

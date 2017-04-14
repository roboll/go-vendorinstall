PACKAGE := github.com/roboll/go-vendorinstall/...

build:
	go build $(PACKAGE)

install:
	go install $(PACKAGE)

fmt:
	go fmt $(PACKAGE)

lint:
	gometalinter $(PACKAGE)

test:
	go test -v -race $(PACKAGE)

.PHONY: build install fmt lint test

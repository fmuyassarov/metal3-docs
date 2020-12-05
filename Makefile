SHELL:=/usr/bin/env bash
BIN_DIR := /hack
SRC_PATH := docs/user-guide/
MDBOOK_VERSION := v0.4.3
MDBOOK_RELEASE_URL := https://github.com/rust-lang/mdBook/releases/download/$(MDBOOK_VERSION)/mdbook-$(MDBOOK_VERSION)-x86_64-unknown-linux-gnu.tar.gz

.PHONY: bin
bin:
	curl -L $(MDBOOK_RELEASE_URL) | tar xvz

.PHONY: serve
serve:
	./mdbook serve $(SRC_PATH)

.PHONY: build
build:
	./mdbook build $(SRC_PATH)

.PHONY: watch
watch:
	./mdbook watch $(SRC_PATH)

.PHONY: clean
clean:
	rm -rf book
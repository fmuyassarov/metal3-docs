# Ensure Make is run with bash shell as some syntax below is bash-specific
SHELL:=/usr/bin/env bash
BIN_DIR := hack
SOURCE_PATH := docs/user-guide
MDBOOK_VERSION := v0.4.3
MDBOOK_RELEASE_URL := https://github.com/rust-lang/mdBook/releases/download/$(MDBOOK_VERSION)/mdbook-$(MDBOOK_VERSION)-x86_64-unknown-linux-gnu.tar.gz

## --------------------------------------
## Documentation tooling
## --------------------------------------

.PHONY: bin
bin:
	curl -L $(MDBOOK_RELEASE_URL) | tar xvz -C $(BIN_DIR)

.PHONY: serve
serve: 
	$(BIN_DIR)/mdbook serve --open $(SOURCE_PATH)

.PHONY: build
build:
	$(BIN_DIR)/mdbook build $(SOURCE_PATH)

.PHONY: watch
watch:
	$(BIN_DIR)/mdbook watch $(SOURCE_PATH)

.PHONY: clean
clean:
	rm -rf $(SOURCE_PATH)/book

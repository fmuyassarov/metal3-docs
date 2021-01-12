BIN_DIR := hack
MDBOOK_BIN := $(BIN_DIR)/mdbook
MDBOOK_VERSION := v0.4.5
MDBOOK_RELEASE_URL := https://github.com/rust-lang/mdBook/releases/download/$(MDBOOK_VERSION)/mdbook-$(MDBOOK_VERSION)-x86_64-unknown-linux-gnu.tar.gz
SOURCE_PATH := docs/user-guide

## ----------------------
## Documentation tooling
## ----------------------

$(MDBOOK_BIN):
	curl -L $(MDBOOK_RELEASE_URL) | tar xvz -C $(BIN_DIR)

.PHONY: build
build: $(MDBOOK_BIN)
	$(MDBOOK_BIN) build $(SOURCE_PATH)

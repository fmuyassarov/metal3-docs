
BIN_DIR := /usr/local/bin
MDBOOK_VERSION := v0.4.3
MDBOOK_RELEASE_URL := https://github.com/rust-lang/mdBook/releases/download/$(MDBOOK_VERSION)/mdbook-$(MDBOOK_VERSION)-x86_64-unknown-linux-gnu.tar.gz

.PHONY: mdbook_bin
mdbook_bin:
	curl -L $(MDBOOK_RELEASE_URL) | sudo tar xvz -C $(BIN_DIR)

.PHONY: serve
serve: mdbook serve

.PHONY: build
build: mdbook build

.PHONY: watch
watch: mdbook watch

.PHONY: clean
clean:
	rm -rf book
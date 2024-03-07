.PHONY: help

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: vendor

uninstall:
	rm -rf vendor

vendor:
	composer install

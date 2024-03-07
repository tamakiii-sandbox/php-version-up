.PHONY: help install uninstall

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: vendor

uninstall:
	rm -rf vendor

vendor:
	composer install

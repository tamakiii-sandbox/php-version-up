.PHONY: help install uninstall

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: vendor

uninstall:
	rm -rf vendor

test:
	vendor/bin/phpunit -vvv test

vendor:
	composer install

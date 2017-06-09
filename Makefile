compile:
	rebar3 compile

install:
	rebar3 get-deps

console: compile
	rebar3 shell

release:
	rebar3 release

test:
	rebar3 eunit

cli:
	./_build/default/bin/cli

start:
	_build/default/rel/erlang_package/bin/erlang_package foreground

compose:
	docker-compose up

compose-bash:
	docker-compose run web bash

compose-build:
	docker-compose build

compose-release:
	docker-compose run web make release

.PHONY: test


compile:
	bin/rebar3 compile

install:
	bin/rebar3 get-deps

console: compile
	bin/rebar3 shell

release:
	bin/rebar3 release

test:
	bin/rebar3 eunit

cli:
	./_build/default/bin/cli

.PHONY: test


install:
	bin/rebar3 get-deps

compile:
	bin/rebar3 compile

console: compile
	bin/rebar3 shell

release:
	bin/rebar3 release

test:
	bin/rebar3 eunit

cli:
	./_build/default/bin/cli

.PHONY: test


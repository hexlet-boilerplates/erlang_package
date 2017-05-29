install:
	bin/rebar3 get-deps

compile:
	bin/rebar3 compile

escriptize: compile
	bin/rebar3 escriptize

console: compile
	bin/rebar3 shell

release:
	bin/rebar3 release

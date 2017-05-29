install:
	bin/rebar3 get-deps

gen-bin:
	bin/rebar3 escriptize

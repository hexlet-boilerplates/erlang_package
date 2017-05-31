-module(cli_tests).

-include_lib("eunit/include/eunit.hrl").

cli_test_() ->
  {foreach,
   fun start/0,
   fun stop/1,
   [
    fun check_run/1
   ]
  }.

start() ->
  application:ensure_all_started(erlang_package),
  ok.
stop(_) ->
  ok.


check_run(_) ->
  Result = cli:run(["1", "+", "3"]),
  [?_assertEqual(4, Result)].

%%%-------------------------------------------------------------------
%% @doc erlang_package public API
%% @end
%%%-------------------------------------------------------------------

-module(erlang_package_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
  lager:info("Hello from app"),
  Dispatch = cowboy_router:compile([
                                    {'_', [{"/", hello_handler, []}]}
                                   ]),
  {ok, _} = cowboy:start_clear(my_http_listener, 100,
                               [{port, 8080}],
                               #{env => #{dispatch => Dispatch}}
                              ),
  erlang_package_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================

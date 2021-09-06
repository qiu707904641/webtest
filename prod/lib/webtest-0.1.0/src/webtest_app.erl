%%%-------------------------------------------------------------------
%% @doc webtest public API
%% @end
%%%-------------------------------------------------------------------

-module(webtest_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    webtest_sup:start_link().

stop(_State) ->
    ok.

%% internal functions

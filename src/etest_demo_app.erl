-module(etest_demo_app).

-behaviour(application).

%% Application callbacks
-export([start/0,start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start() ->
    application:start(etest_demo).

start(_StartType, _StartArgs) ->
    etest_demo_sup:start_link().

stop(_State) ->
    ok.

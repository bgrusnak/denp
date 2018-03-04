-module(example_app).
-behaviour(application).

-export([start/2,stop/1]).
%% API.

start(_Type, _Args) ->
    example_sup:start_link().

stop(_State) ->
    ok.

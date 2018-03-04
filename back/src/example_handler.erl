-module(example_handler).

-export([init/3]).
-export([allowed_methods/2]).
-export([content_types_accepted/2]).
-export([content_types_provided/2]).
-export([handle_post/2]).
-export([to_html/2]).
-export([to_json/2]).
-export([to_text/2]).

init(_Transport, _Req, []) ->
    {upgrade, protocol, cowboy_rest}.

%% Which HTTP methods are allowed
allowed_methods(Req, State) ->
    {[<<"GET">>, <<"POST">>], Req, State}.

%% Which content types are accepted by POST/PUT requests
content_types_accepted(Req, State) ->
    {[{{<<"application">>, <<"json">>, []}, handle_post}],
     Req, State}.

%% Handle the POST/PUT request
handle_post(Req, State) ->
    {true, Req, State}.

%% Which content types we handle for GET/HEAD requests
content_types_provided(Req, State) ->
    {[{<<"text/html">>, to_html},
      {<<"application/json">>, to_json},
      {<<"text/plain">>, to_text}
    ], Req, State}.


%% Return counters/counter as json
to_json(Req, State) ->
    Resp =  {state => ok},
    {jsone:encode(Resp), Req, State}.

%% Return counters/counter as plain text
to_text(Req, State) ->
    Resp =<<"ok">>,
    {Resp, Req, State}.

%% Return counters/counter as html
to_html(Req, State) ->
    Body = <<"ok>">>,
    {[html_head(),Body,html_tail()], Req, State}.

html_head() ->
    <<"<html>
    <head>
    <meta charset=\"utf-8\">
    <title>example</title>
    </head>">>.
html_tail() ->
    <<"</body>
    </html>">>.

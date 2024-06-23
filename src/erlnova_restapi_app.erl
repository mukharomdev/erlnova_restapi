%%%-------------------------------------------------------------------
%% @doc nova_admin public API
%% @end
%%%-------------------------------------------------------------------

-module(erlnova_restapi_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
	% try	erlnova_rest_api_conn_db:connect_boss_db() of
	% 	ok -> {ok,normal}
	% catch
	% 	_:_:Stacktrace ->
	% 		throw({'EXIT',Stacktrace})
	% end,

    erlnova_restapi_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================

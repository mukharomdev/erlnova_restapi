-module(erlnova_restapi_main_controller).
-export([
         index/1,
         create/1
        ]).

index(_Req) ->
    {ok, [{message, "Hello world!"}]}.


create(#{json := #{<<"id">> := Id , <<"name">> := Name}})->
    try

        Result = [Id,Name],
        {json,200,#{},#{<<"id ">> => lists:nth(1,Result), <<"name ">> => lists:nth(2,Result)
        }}
    catch
        Error:Cause -> {json,500,#{<<"Content-Type">> => <<"json">>},#{<<"error">> =>Error , <<"cause">> => Cause}}
    end.

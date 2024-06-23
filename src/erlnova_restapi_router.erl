-module(erlnova_restapi_router).
-behaviour(nova_router).

-export([
         routes/1
        ]).

%% The Environment-variable is defined in your sys.config in {nova, [{environment, Value}]}
routes(_Environment) ->
    [#{prefix => "",
      security => false,
      routes => [
                 {"/", { erlnova_restapi_main_controller, index}, #{methods => [get]}},
                 {"/users",{erlnova_restapi_main_controller,create},#{methods=>[post]}},
                 {"/assets/[...]", "assets"}
                ]
      }].

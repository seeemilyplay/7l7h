-module(value).
-compile(export_all).

value(Val) ->
  receive
    {From, _} ->
      From ! {self(), Val},
      value(Val);
    terminate ->
      ok
  end.

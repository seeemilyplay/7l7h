-module(counter).
-compile(export_all).

counter(Val) ->
  receive
    increment ->
      counter(Val + 1);
    decrement ->
      counter(Val - 1);
    {From, ask} ->
      From ! {self(), Val},
      counter(Val);
    terminate ->
      ok
  end.

incrementLots(Counter) ->
  lists:map(fun(_X) -> Counter ! increment end, lists:seq(1,10000)).
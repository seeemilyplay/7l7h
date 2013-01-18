-module(fizzbuzz).
-export([fizzbuzz/0]).

fizzbuzz() ->
  lists:map(fun(X) -> fb(X) end, lists:seq(1, 100)).

fb(X) ->
  if
    X rem 15 =:= 0 -> io:fwrite("FizzBuzz~n");
    X rem 3 =:= 0 -> io:fwrite("Fizz~n");
    X rem 5 =:= 0 -> io:fwrite("Buzz~n");
    true        -> io:fwrite("~w~n",[X])
  end.
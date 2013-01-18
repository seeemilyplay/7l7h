-module(hello).
-export([herro/0]).

herro() -> io:fwrite("i promise this is the last one!\n").
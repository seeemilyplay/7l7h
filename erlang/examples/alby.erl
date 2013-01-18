-module(alby).
-compile(export_all).

alby() ->
  receive
    chicken -> io:fwrite("purrrr!\n");
    apple -> io:fwrite("meh\n");
    _ -> io:fwrite("miaow!!\n")
  end.

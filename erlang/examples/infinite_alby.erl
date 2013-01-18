-module(infinite_alby).
-compile(export_all).

alby() ->
  receive
    chicken ->
      io:fwrite("purrrr!\n"),
      alby();
    apple ->
      io:fwrite("meh\n"),
      alby();
    _ ->
      io:fwrite("miaow!!\n"),
      alby()
  end.

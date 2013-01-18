-module(library).
-compile(export_all).

library(ItemList) ->
  receive
    {From, {borrow, Item}} ->
      case lists:member(Item, ItemList) of
        true ->
          From ! ok,
          library(lists:delete(Item, ItemList));
        false ->
          From ! not_found,
          library(ItemList)
      end;
    {return, Item} ->
      library([Item|ItemList]);
    terminate ->
      ok
  end.

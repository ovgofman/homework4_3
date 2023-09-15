%%%-------------------------------------------------------------------
%%% @author alex
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%% Efficient Way to Find Really Big Fibonacci Number.
%%% @end
%%% Created : 12. Sep 2023 11:31 PM
%%%-------------------------------------------------------------------
-module(fib).
-author("alex").

%% API
-export([fib/1]).

fib(N) ->
  fib(N, 1, 1).
fib(N, PREV, NEXT) ->
  case N of
    N when N < 0 -> 0;
    0 -> NEXT;
    1 -> NEXT;
    _ -> fib(N - 1, NEXT, PREV + NEXT)
  end.
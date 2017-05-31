-module(cli).

-export([main/1, run/1]).

main(Args) ->
  Result = run(Args),
  erlang:display(Result),
  erlang:halt(0).

run(Args) ->
  OptSpecList = [
                 {help, $h, "help", undefined, "Help"}
                ],

  case Args of
    [] ->
      getopt:usage(OptSpecList, "cli");
    _ ->
      {ok, {_, [Op1, Operand, Op2]}} = getopt:parse(OptSpecList, Args),
      {Num1, _} =  string:to_integer(Op1),
      {Num2, _} =  string:to_integer(Op2),
      calc:eval(Num1, Operand, Num2)
  end.

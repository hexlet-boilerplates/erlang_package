-module(calc).

-export([eval/3]).

eval(Op1, "+", Op2) -> Op1 + Op2;
eval(_, Operator, _) ->
  error("what?").


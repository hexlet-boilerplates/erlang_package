-module(cli).

-export([main/1]).

main(Args) ->
  OptSpecList = [
                 {host,    $h,        "host",    {string, "localhost"}, "Database server host"},
                 {port,    $p,        "port",    integer,               "Database server port"},
                 {dbname,  undefined, "dbname",  {string, "users"},     "Database name"},
                 {xml,     $x,        undefined, undefined,             "Output data in XML"},
                 {verbose, $v,        "verbose", integer,               "Verbosity level"},
                 {file,    undefined, undefined, string,                "Output file"}
                ],

  Result = getopt:parse(OptSpecList, Args),
  erlang:display("opa!").

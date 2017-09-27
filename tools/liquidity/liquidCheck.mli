(**************************************************************************)
(*                                                                        *)
(*    Copyright (c) 2017       .                                          *)
(*    Fabrice Le Fessant, OCamlPro SAS <fabrice@lefessant.net>            *)
(*                                                                        *)
(*    All rights reserved. No warranty, explicit or implicit, provided.   *)
(*                                                                        *)
(**************************************************************************)

open LiquidTypes

val error :
  location ->
  ('a, Format.formatter, unit, unit, unit, 'b) format6 -> 'a

val types : warnings:bool -> env -> syntax_exp contract ->
            typed_exp contract
            * datatype exp StringMap.t

val uniq_ident : string -> string
include module type of Base
include module type of Stdio
module Cmdliner = Cmdliner_ext
module Fpath = Fpath_ext
module List = List_ext
module String = String_ext
module Warning = Warning
module Format = Caml.Format
module Filename = Caml.Filename
module Parser = Token_latest

val ( >> ) : ('a -> 'b) -> ('b -> 'c) -> 'a -> 'c
(** Composition of functions: [(f >> g) x] is exactly equivalent to
    [g (f (x))]. Left associative. *)

val impossible : string -> _
(** Indicate why the call is expected to be impossible. *)

val check : ('a -> _) -> 'a -> 'a
(** Asserting identity: [check f x] asserts that [f x] does not raise and
    returns [x]. *)

(*
    $Id$

    This module provides regular expression matching.  Regular
    expressions don't need to be compiled before they can be matched
    against some input.  Instead the automaton is build while the
    input is consumed.  The drawback of this method is that no
    subexpression matching is possible to extract matching substrings.

    This algorithm used here is by Mark Hopkins who posted it once to
    comp.compiles.  Search the comp.compilers archive for a detailed
    article and an implementation in C.
     
    1999 Christian Lindig <lindig@gaertner.de> 
*)


type 'a rx      = 
                | RXzero                                (* {}           *)
                | RXunit                                (* ""           *)
                | RXsym         of 'a                   (* 'x'          *)
                | RXmany        of ('a rx)              (* e*           *)
                | RXsome        of ('a rx)              (* e+           *)
                | RXopt         of ('a rx)              (* e?           *)
                | RXseq         of ('a rx) * ('a rx)    (* e1 e2        *)
                | RXalt         of ('a rx) * ('a rx)    (* e1 | e2      *)

let zero        = RXzero
let unit        = RXunit
let sym x       = RXsym x
let many        = function
                | RXunit        -> RXunit
                | RXzero        -> RXunit
                | x             -> RXmany x
let some        = function
                | RXunit        -> RXunit
                | RXzero        -> RXzero
                | x             -> RXsome x
let opt         = function
                | RXunit        -> RXunit
                | RXzero        -> RXunit
                | x             -> RXopt x
let seq x y     = match (x,y) with
                | RXzero, x     -> RXzero
                | RXunit, x     -> x
                | x     , RXzero-> RXzero
                | x     , RXunit-> x
                | x     , y     -> RXseq(x,y)
let alt x y     = match (x,y) with
                | RXzero, x     -> x
                | x     , RXzero-> x
                | x     , y     -> RXalt(x,y)

(* two convenience infix operators *)

let ( ||| ) = alt
let ( *** ) = seq

(* [nullable e] is true, iff the empty sequence (RXzero) is recognized 
   by [e]. *)

let rec nullable = function
    | RXzero            -> false
    | RXunit            -> true
    | RXsym x           -> false
    | RXmany e          -> true
    | RXsome e          -> nullable e
    | RXopt e           -> true
    | RXseq(e1,e2)      -> nullable e1 && nullable e2
    | RXalt(e1,e2)      -> nullable e1 || nullable e2

(* [residual e x] returns a regular expression e' that recognizes the
   language L(e') = { w | xw \in L(e)}. *)

let rec residual e' x = match e' with
    | RXzero            -> RXzero
    | RXunit            -> RXzero
    | RXsym x'          -> if   x' = x 
                           then RXunit
                           else RXzero
    | RXmany e          -> seq (residual e x) (many e)
    | RXsome e          -> seq (residual e x) (many e)
    | RXopt e           -> residual e x
    | RXseq(e1,e2)      -> if   nullable e1
                           then alt (seq (residual e1 x) e2) (residual e2 x)
                           else seq (residual e1 x) e2
    | RXalt(e1,e2)      -> alt (residual e1 x) (residual e2 x)
    
(* [matches e syms] is true, iff the word [syms] is an element of L(e), i.e. 
   [e] matches the symbols [syms]. *)

let matches e syms      = nullable (List.fold_left residual e syms)

(* [matchstr e str] is true, iff string [str] is matched by 
   regular expression [e] *)
 
let matchstr e str =
    let len = String.length str         in
    let rec loop e i =
        if   i = len 
        then nullable e
        else loop (residual e (String.get str i)) (i+1)
    in
        loop e 0

(* examples *)

let e1 = many (sym 'a') *** some (sym 'b')
let e2 = sym 'a' *** opt (sym 'b') *** some (sym 'a')




                


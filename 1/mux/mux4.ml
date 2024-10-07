let mux2 s0 a1 a0 = 
if s0 then a1 else a0;;
(* val mux2 : bool -> 'a -> 'a -> 'a = <fun> *)
(* let mux4 s1 s0 a3 a2 a1 a0 =
mux2 s1 mux2 s0 a3 a2 mux2 s0 a1 a0;; *)
(* Error: This expression has type
         bool ->
         (bool -> 'a -> 'a -> 'a) ->
         (bool -> 'a -> 'a -> 'a) -> bool -> 'a -> 'a -> 'a
       but an expression was expected of type bool *)
let mux4 s1 s0 a3 a2 a1 a0 =
mux2 s1 (mux2 s0 a3 a2) (mux2 s0 a1 a0);;
(* val mux4 : bool -> bool -> 'a -> 'a -> 'a -> 'a -> 'a = <fun> *)
assert(mux4 false false false true false true = false);;
(* Exception: Assert_failure ("//toplevel//", 1, 0). *)
mux4 false false false true false true
;;
(* - : bool = true *)
let mux4 s1 s0 a0 a1 a2 a3 =
mux2 s1 (mux2 s0 a3 a2) (mux2 s0 a1 a0);;
(* val mux4 : bool -> bool -> 'a -> 'a -> 'a -> 'a -> 'a = <fun> *)
assert(mux4 false false false true false true = false);;
(* - : unit = () *)
assert(mux4 false true false true false true = true);;
(* - : unit = () *)
assert(mux4 true false false true false true = false);;
(* - : unit = () *)
assert(mux4 true true false true false true = true);;
(* - : unit = () *)

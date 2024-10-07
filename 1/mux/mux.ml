let mux2 s0 a b = (a && not(s0)) || (b && s0)

let mux22 s0 a b = if s0 then a else b

let mux23 s0 a b = match (s0) with
  | true -> a
  | false -> b
;;

let mux4 s1 s0 a3 a2 a1 a0 =
  mux2 s1 (mux2 s0 a3 a2) (mux2 s0 a1 a0);;

let mux4match s1 s0 a3 a2 a1 a0 = 
  match s1 with
  | true -> mux2 s0 a1 a0
  | false -> mux2 s1 a3 a2
;;

  assert(mux4 false false false true false true = false);;
  assert(mux4 false true false true false true = true);;
  assert(mux4 true false false true false true = false);;
  assert(mux4 true true false true false true = true);;
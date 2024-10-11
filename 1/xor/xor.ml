let xor1 a b = (not(a) && b) || (a && not(b));;

let xor2 (a : bool) (b : bool) = 
  if (a == b) then false else true;;

let xor3 a b = match (a, b) with
  | (true, true) -> false
  | (false, false) -> false
  | _ -> true
;;

let xor0 : bool -> bool -> bool =
  fun a b  -> 
    (not(a) && b) || (a && not(b))
let ( =? ) a b = 
  if (a true = b true) && (a false = b false) then true
  else false
;;

assert ((fun b -> true) =? (fun b -> true));;
assert ((fun b -> b) =? (fun b -> true) = false);;
assert ((fun b -> false) =? (fun b -> true) = false);;
assert (not =? (fun b -> not (not b)) = false);;
assert ((fun b -> b) =? (fun b -> not (not b)));;
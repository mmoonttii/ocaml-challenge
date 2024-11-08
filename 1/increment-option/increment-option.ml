let f x =
  match x with
  | None -> 0
  | Some x -> x;;

f (Some 3);;
f None;;

let incr_opt (x : int option) =
  match x with
  | None -> None
  | Some(x) -> Some(x+1)
;;

assert(incr_opt (Some 5) = Some 6);;
assert(incr_opt None = None);;
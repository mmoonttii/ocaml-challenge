let option_map f x = 
  match x with
  | None -> None
  | Some v -> Some (f v)
;;

let ( <*> ) =
  fun f x -> match f, x with
  | None, _ -> None
  | Some f, _ -> option_map f x
;;

let square x = x * x
let double x = 2 * x
let multiply x y = x * y;;

assert (Some square <*> None = None);;
assert (None <*> Some 2 = None);;
(* assert (None <*> (double <*> Some 2) = None);; *)
assert (Some multiply <*> Some 3 <*> Some 2 = Some 6);;
assert (Some multiply <*> None <*> Some 2 = None);;
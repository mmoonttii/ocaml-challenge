let ( <|> ) = fun x y -> 
  match x, y with
  | Some x, _ -> Some x
  | None, Some y -> Some y
  | None, None -> None
;;

assert (Some true <|> Some false = Some true);;
assert (None <|> Some false = Some false);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> Some "dog" = Some "dog");;
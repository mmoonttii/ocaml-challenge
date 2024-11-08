let in_range x a b = 
  match x with
  | c when x > a && x < b -> true
  | _ -> false
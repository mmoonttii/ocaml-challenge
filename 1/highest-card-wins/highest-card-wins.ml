type card = Joker | Val of int;;

let win p d =
  match p, d with
  | Joker, Joker -> false
  | _, Joker -> false
  | Joker, _ -> true
  | a, b when a > b -> true
  | _ -> false
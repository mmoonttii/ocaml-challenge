let is_even x =
  match (x mod 2) with
  | 1 -> false
  | _ -> true
;;

let win a b =
  match a, b with
  | a, b when a < 1 || a > 5 && b < 1 || b > 5 -> 0
  | a, _ when a < 1 || a > 5 -> -1
  | _, b when b < 1 || b > 5 -> 1
  | a, b when is_even(a+b) -> 1
  | a, b when not(is_even(a+b)) -> -1
  | _ -> 0
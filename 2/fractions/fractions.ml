let is_posfrac (a, b) = 
  b <> 0 && (a * b > 0)
;;

let compare_posfrac (a, b) (c, d) =
  if not (is_posfrac(a,b)) || not (is_posfrac(c, d)) then
    failwith("Fracs are not pos")
  else
    match a * d, b * c with
    | u, v when u = v -> 0
    | u, v when u > v -> 1
    | _ -> -1
;;

let compare_frac (a,b) (c,d) =
  match a * d, b * c with
  | u, v when u = v -> 0
  | u, v when u > v -> 1
  | _ -> -1
;;
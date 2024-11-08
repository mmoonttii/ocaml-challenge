let best_offer a b c =
  match a, b, c with
  | None, None, None -> None
  | Some(a), None, None -> Some(a)
  | None, Some(b), None -> Some(b)
  | None, None, Some(c) -> Some(c)
  | None, Some(b), Some(c) -> Some(max b c)
  | Some(a), None, Some(c) -> Some(max a c)
  | Some(a), Some(b), None -> Some(max a b)
  | Some(a), Some(b), Some(c) -> Some(max a (max b c))
;;

assert(best_offer (Some 100) (Some 200) (Some 150) = Some 200);;
assert(best_offer (Some 100) None (Some 150) = Some 150);;
assert(best_offer None None None = None);;
assert(best_offer None (Some 300) None = Some 300);;
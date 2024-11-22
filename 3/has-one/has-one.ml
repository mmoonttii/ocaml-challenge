let rec has_one n =
match n with
| 0 -> false
| a when a < 0 -> failwith "Negativo"
| a when a mod 10 = 1 -> true
| a -> has_one (a / 10)
;;

assert(has_one 10 = true);;
assert(has_one 220 = false);;
assert(has_one 911 = true);;
assert(has_one 451 = true);;
assert(try has_one (-1) |> fun _ -> false with _ -> true);;
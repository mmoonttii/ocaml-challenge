type blood_group = A | B | AB | O

let check_groups a b = match a, b with
| _, AB
| O, _
| B, B
| A, A -> true
| _ -> false
;;

assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;
Random.init;;
let dice load =
  match Random.int 100 with
  | x when x < load -> 6
  | _ -> 1 + Random.int 5
;;
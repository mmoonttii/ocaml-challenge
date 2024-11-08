let f1 x = if x > 0 then true else false;;
let f2 x = match x with true -> 1 | false -> 0;; 
let f3 x = if x > 0 then (1, true) else (0, false);;
let f4 (x, y) = 
  match y with
  | true -> x * (-1)
  | _ -> x;;
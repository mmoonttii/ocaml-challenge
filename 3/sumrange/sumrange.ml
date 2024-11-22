let rec range a b = match a,b with
| a,b when a > b -> []
| _ -> a :: range(a+1) b
;;

let rec sum = function
| [] -> 0
| h::l -> h + sum 
;;

let sum_range2 a b = 
  range a b
  |> sum
;;

let sum_range2 a b =
  range a b 
  |> List.fold_left ( + ) 0
;;
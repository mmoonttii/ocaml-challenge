let rec range a b = match a,b with
| a,b when a >= b -> []
| _ -> a :: range(a+1) b
;;

let rec zero_look f = function  
| [] -> 0
| h::l -> if (f h) = 0 then 1 + (zero_look f l) else zero_look f l
;;

let countzero f a b = 
  zero_look f (range a b)
;;

let countzero2 f a b =
  range a b
  |> List.map f
  |> List.fold_left ( fun acc y -> if y = 0 then 1 else 0 + acc ) 0
;;

let countzero3 f a b =
  range a b
  |> List.map f
  |> List.filter (fun n -> n = 0)
  |> List.length

assert (countzero (fun x -> x) (-10) 10 = 1);;
assert (countzero (fun x -> x) 1 10 = 0);;
assert (countzero (fun x -> x*x - 1) (-10) 10 = 2);;
assert (countzero (fun x -> (if x<0 then -x else x) - 1) (-10) 10 = 2);;
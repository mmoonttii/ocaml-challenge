type suit = S | H | D | C;;
type card = Card of int * suit;;

Random.self_init ();;

let rndCard() = 
  let value = (Random.int_in_range ~min:1 ~max:13) in
  let _suit = match Random.int 3 with
    | 0 -> S
    | 1 -> H
    | 2 -> D
    | 3 -> C
    | _ -> failwith "Out of bounds"
  in Card(value, _suit)
;;

let rndHand () =
  (rndCard(), rndCard(), rndCard(), rndCard(), rndCard())
;;

let rec is_consecutive = function
  | [] | [_] -> true
  | h :: h' :: t -> (h = h' + 1) && is_consecutive (h' :: t)
;;


let straight (Card (v1, _), Card (v2, _), Card (v3, _), Card (v4, _), Card (v5, _)) =
  let values = [v1; v2; v3; v4; v5] in
  let sorted = List.sort Stdlib.compare values in
  is_consecutive sorted;;

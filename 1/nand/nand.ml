wlet nand1 (a : bool) (b : bool) : bool = 
    not(a && b) ;;
(* val nand : bool -> bool -> bool = <fun> *)

nand1 true false ;;
(* - : bool = true *)

let nand2 (a : bool) (b : bool) : bool = 
    if a 
    then (if b then false else true) 
    else true ;;

let nand3 (a : bool) (b : bool) : bool =
    match (a, b) with
    | (true, true) -> false
    | _ -> true
;;

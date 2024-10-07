let nand1 a b = not(a && b) ;;
(* val nand : bool -> bool -> bool = <fun> *)

nand1 true false ;;
(* - : bool = true *)

(*let nand2 a b = if a then false else true ;;*)

let nand3 a b =
    match (a, b) with
    | (true, true) -> false
    | _ -> true
;;

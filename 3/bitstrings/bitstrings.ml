type bitstring = E | Z of bitstring | U of bitstring;;

let rec string_of_bitstring = function
  | E -> ""
  | Z s -> "0" ^ string_of_bitstring s
  | U s -> "1" ^ string_of_bitstring s
;;

let rec len = function
  | E -> 0
  | Z s -> 1 + len s
  | U s -> 1 + len s
;;

let rec countZ = function
  | E -> 0
  | Z s -> 1 + countZ s
  | U s -> countZ s
;;

let rec countU = function
  | E -> 0
  | Z s -> countU s
  | U s -> 1 + countU s
;;

let rec concat b1 b2 =
  match b1 with
  | E -> b2
  | Z s -> Z (concat s b2)
  | U s -> U (concat s b2)
;;

let rec equals b1 b2 =
  match b1, b2 with
  | E, E -> true
  | Z s, Z s'
  | U s, U s' -> true && equals s s'
  | _ -> false
;;

let tl = function
  | Z s -> s
  | U s -> s
  | E -> E
;;
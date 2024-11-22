type winner = Player | Computer | Tie;;

Random.init;;

let win (hp, gp) = 
  let hc = 1 + Random.int 5 in
  let gc = 1 + Random.int 10 in
  let sum = hp + hc in 

  match (gp = sum, gc = sum) with
  | (true, false) -> (hc, gc), Player
  | (false, true) -> (hc, gc), Computer
  | _ -> (hc, gc), Tie
;;

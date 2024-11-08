type season = Spring | Summer | Autumn | Winter

let squirrel_play temp season =
  match temp, season with
  | a, Summer when a >= 15 && a <= 35 -> true
  | a, _ when a >= 15 && a <= 30 -> true
  | _ -> false;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;

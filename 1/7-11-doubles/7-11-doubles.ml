Random.self_init;;
let seven_eleven_doubles = 
  let d1 = 1 + Random.int(6) in 
  let d2 = 1 + Random.int(6) in
  match d1 + d2 with
  | 7 -> (true, d1, d2)
  | 11 -> (true, d1, d2)
  | a when d1 = d2 -> (true, d1, d2)
  | _ -> (false, d1, d2)
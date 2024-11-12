Random.self_init;;

let guess5 n =
  if n < 1 || n > 5 then failwith "Out of range"
  else
    let r = 1 + Random.int(5) in
      match r = n with
      | true -> (true, r)
      | false -> (false, r)
let parrot_trouble (talk:bool) (hour:int) : bool option = 
  match hour with
  | a when a < 0 || a > 23 -> None
  | a when a < 7 || a > 20 -> Some true
  | _ -> Some false;;
xx
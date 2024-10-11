type weekday = Mo | Tu | We | Th | Fr
type course = ALF | LIP

let isLecture (d : weekday) (c : course) : bool = 
  match (c, d) with
  | (ALF, (Tu | Th | Fr)) 
  | (LIP, (We | Th)) -> true
  | _ -> false
;;


let consensus3 (f0, f1, f2) = 
  fun n -> match (f0 n, f1 n, f2 n) with
  | (None, _, _) | (_, None, _) | (_, _, None) -> None
  | (Some v0, Some v1, Some v2) -> 
    if v0 = v1 || v0 = v2 then Some v0
    else if v1 = v2 then Some v1
    else None
;;

(* assert (try consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 0 = None with _ -> true);; *)
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 1 = Some 5);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 2 = Some 2);;
assert (consensus3 ((fun x -> x), (fun y -> y+4), (fun z -> 5/z)) 3 = None);;
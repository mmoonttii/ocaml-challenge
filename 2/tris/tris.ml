let count x l =
  let f = List.filter ((=) x) l in
  List.length f
;;

let tris (a, b, c, d) = 
  let l = [a; b; c; d] in
  List.exists (fun v -> count v l >= 3) l;;
;;

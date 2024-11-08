(* ∅ *)
let f1 x = 
    if x < 0 then failwith "OOR" else 0

(* {0, 1, 2} *)
let f2 x = 
    if x < 0 then failwith "OOR" else
    if x >= 0 && x <= 2 then 1 else 0

(* {x | 0 < x < 100} *)
let f3 x = 
    if x < 0 then failwith "OOR" else
    if x > 0 && x < 100 then 1 else 0

(* {x | false } *)
let f4 x = 
    if x < 0 then failwith "OOR" else 0

(* {x | ∀y. x + y ≥ x} *)
    
(* {x | ∃y. x = y + y} *)

(* {x | ∃y. y = x + x} *)

(* {x | ∃y. x < y} *)

(* {x | ∃y. x * x = y} *)

(* {x | ∃y. y < 3 ∧ 7 < x y < 20 } *)

(* {x | x < 50 ∧ ∃y. x = y + y} *)

(* {z | ∃x. z = 2 x ∧ 0 < 2x < 50 } *)

(* {z | ∃x, y. z = x + y ∧ x * y ≤ 20} *)

(* {x | ∀y. y < x → y < 2 } *)

(* {x | ∀y. (x mod y = 0) → (y=1 ∨ y=x) } *)
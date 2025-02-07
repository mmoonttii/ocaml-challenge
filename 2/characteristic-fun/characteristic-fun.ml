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
let f5 x = 
    if x < 0 then failwith "OOR" else 1

(* {x | ∃y. x = y + y} *)
let f6 x =
    if x < 0 then failwith "OOR" else
    if x mod 2 = 0 then 1 else 0

(* {x | ∃y. y = x + x} *)
let f7 x =
    if x < 0 then failwith "OOR" else 1

(* {x | ∃y. x < y} *)
let f8 x =
    if x < 0 then failwith "OOR" else 1

(* {x | ∃y. x * x = y} *)
let f9 x =
    if x < 0 then failwith "OOR" else 1

(* {x | ∃y. y < 3 ∧ 7 < x y < 20 } *)


(* {x | x < 50 ∧ ∃y. x = y + y} *)

(* {z | ∃x. z = 2 x ∧ 0 < 2x < 50 } *)

(* {z | ∃x, y. z = x + y ∧ x * y ≤ 20} *)

(* {x | ∀y. y < x → y < 2 } *)

(* {x | ∀y. (x mod y = 0) → (y=1 ∨ y=x) } *)
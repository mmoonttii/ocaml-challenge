type student = {
  id: string;
  name: string;
  surname: string;
  vote: int option;
  laude: bool
}

let alf2023 = [
  { id="60/61/65570"; name="Ambra"; surname="Ambu"; vote=Some 21; laude=false };
  { id="61/61/65778"; name="Brunello"; surname="Brundu"; vote=Some 18; laude=false };
  { id="60/61/65624"; name="Costantino"; surname="Cossu"; vote=Some 24; laude=false };
  { id="60/61/65808"; name="Deborah"; surname="Demurtas"; vote=Some 28; laude=false };
  { id="60/61/65668"; name="Efisio"; surname="Ennas"; vote=Some 18; laude=false };
  { id="60/61/65564"; name="Felicino"; surname="Frau"; vote=None; laude=false };
  { id="60/64/20203"; name="Gavino"; surname="Girau"; vote=Some 20; laude=false };
  { id="60/61/65892"; name="heidi"; surname="hernandez"; vote=Some 8; laude=true };
  { id="60/61/65563"; name="Igino igor"; surname="Ibba"; vote=Some 15; laude=false };
  { id="60/61/64427"; name="Lillo"; surname="Lilliu"; vote=Some 25; laude=false };
  { id="60/61/65448"; name="Morgan"; surname="Murtas"; vote=Some 15; laude=false };
  { id="61/61/65213"; name="Nathan"; surname="Nieddu"; vote=Some 16; laude=false };
  { id="60/61/65832"; name="Ornella"; surname="Onnis"; vote=Some 30; laude=true };
  { id="60/61/65517"; name="Pinuccio"; surname="Puddu"; vote=Some 28; laude=false };
  { id="60/64/21222"; name="Quintilio"; surname="Quaglioni"; vote=Some 22; laude=false };
  { id="60/61/65907"; name="Rihanna"; surname="Ruzzu"; vote=Some 18; laude=false };
  { id="60/61/65766"; name="Samantah"; surname="Sulis"; vote=Some 30; laude=false };
  { id="60/61/65730"; name="Tatiana"; surname="Truzzu"; vote=Some 30; laude=true };
  { id="60/61/65738"; name="Ubaldo"; surname="Urru"; vote=None; laude=true };
  { id="60/61/65722"; name="Valentina"; surname="Vargiu"; vote=Some 30; laude=true };
  { id="60/61/65592"; name="Zlatan"; surname="Zuncheddu"; vote=Some 18; laude = false }
];;

let rec id_of_noshow l = 
  match l with
  | [] -> []
  | h :: t ->
    if h.vote = None then 
      h.id :: id_of_noshow t 
    else id_of_noshow t
;;

let rec upgradeable l =
  match l with
  | [] -> []
  | h :: t -> 
    if h.vote >= Some 15 && h.vote <= Some 17 then
      (h.name ^ "/" ^ h.surname) :: upgradeable t
    else upgradeable t
;;

let helper s = {id = s.id; name = s.name; surname = s.surname; vote = Some 18; laude = s.laude};;

let rec upgrade l =
  match l with
  | [] -> []
  | h :: t ->
    if h.vote >= Some 15 && h.vote <= Some 17 then
      (helper h) :: upgrade t
    else h :: upgrade t
;;

let rec wrong_laude l = 
  match l with
  | [] -> []
  | h :: t -> 
    if (h.laude = true) && (h.vote <> Some 30) then
      (h.name ^ "/" ^ h.surname) :: wrong_laude t 
    else wrong_laude t
;;

let laude_helper s = {id = s.id; name = s.name; surname = s.surname; vote = s.vote; laude = false};;
let rec fix_laude l =
  match l with
  | [] -> []
  | h :: t -> 
    if (h.laude = true) && (h.vote <> Some 30) then
      laude_helper h :: fix_laude t
    else h :: fix_laude t
;;

let percent_passed l =
  let count = List.length l |> float_of_int in 
  let num = 
    List.filter (fun s -> s.vote >= Some 18) l
    |> List.length
    |> float_of_int
  in
  (num /. count) *. 100.
  |> int_of_float
;;

exception WrongLaude

let avg_helper s =
  match s.laude, s.vote with
  | true, Some n when n = 30 -> n + 2
  | false, Some n -> n
  | _ -> raise WrongLaude
;;


let avg_vote l =
  let f = List.filter (fun s -> s.vote >= Some 18) l in
  let count = List.length f
    |> float_of_int in
  let tot = List.fold_left (fun a s -> a + avg_helper s) 0 f
    |> float_of_int in
  tot /. count
;;
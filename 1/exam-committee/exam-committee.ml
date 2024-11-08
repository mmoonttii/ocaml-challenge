type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam a b c =
  match a, b, c with
  | StrongReject, _, _
  | _, StrongReject, _
  | _, _, StrongReject -> false
  | WeakReject, WeakReject, _
  | WeakReject, _, WeakReject
  | _, WeakReject, WeakReject -> false
  | _ -> true
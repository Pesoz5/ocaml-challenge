type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam : vote -> vote -> vote -> bool = 
  fun c1 c2 c3 ->
    match (c1,c2,c3) with
    | (StrongReject, _ , _) -> false
    | (_ , StrongReject, _) -> false
    | (_ , _ , StrongReject) -> false
    
    | (WeakReject, WeakReject, _) -> false
    | (WeakReject, _, WeakReject) -> false
    | (_, WeakReject, WeakReject) -> false

    | _ -> true
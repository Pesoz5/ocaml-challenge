type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

let decide_exam : vote -> vote -> vote -> bool =
  fun voteA voteB voteC ->
    match (voteA, voteB, voteC) with
    | (StrongReject, _ , _) -> false
    | (_ , StrongReject, _) -> false
    | (_ , _ , StrongReject) -> false
    
    | (WeakReject, WeakReject, _) -> false
    | (WeakReject, _, WeakReject) -> false
    | (_, WeakReject, WeakReject) -> false

    | _ -> true
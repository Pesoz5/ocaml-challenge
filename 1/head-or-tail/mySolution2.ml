let hot : unit -> string =
  fun unit->
    let random = Random.int(2) in
    match random with
    | 1 ->  "head"
    | 0 -> "tail"
    | _ -> "error"
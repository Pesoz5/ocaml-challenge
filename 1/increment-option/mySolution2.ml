let incr_opt : int option -> int option =
  fun x ->
    match x with
    | None -> None
    | Some x -> Some(x+1) 
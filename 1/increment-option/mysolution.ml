let incr_opt : int option -> int option = 
  fun value ->
    match value with
    | None -> None
    | Some value -> Some(value+1)
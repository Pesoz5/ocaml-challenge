let (<|>) : 'a option -> 'a option -> 'a option = 
  fun a b ->
    match a, b with
    | Some a, _ -> Some a
    | None, Some b -> Some b
    | _ -> None 
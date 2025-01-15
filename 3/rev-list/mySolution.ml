let rec rev : 'a list -> 'a list =
  fun list ->
    match list with
    | [] -> []
    | h :: t ->
      let reversed = rev t in
      reversed @ [h]
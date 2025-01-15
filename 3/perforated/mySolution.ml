let rec is_perforated : int list -> bool =
  fun list ->
    match list with
    | [] -> true
    | [_] -> true
    | h1 :: h2 :: t -> 
        if abs (h1 - h2) > 1 then is_perforated (h2 :: t) else false

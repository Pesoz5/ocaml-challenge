let parrot_trouble : bool -> int -> bool option =
  fun t h ->
    if (h < 0 || h > 23) then None
    else if (t && (h > 19 || h < 8)) then Some true
       else Some false
      
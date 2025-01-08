let parrot_trouble : bool -> int -> bool option =
  fun talking time ->
    if time < 0 || time > 23 then None
    else
      if talking && (time <= 7 || time >= 20) then Some true
      else Some false
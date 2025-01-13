let (=?) : (bool -> bool) -> (bool -> bool) -> bool =
  fun f g ->
    let x = true in
    let y = false in
    if f x == g x && f y == g y then true else false
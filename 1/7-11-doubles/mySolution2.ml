let seven_eleven_doubles : unit -> bool * int * int = 
  fun unit ->
    let d1 = (Random.int(6+1)+1) in
    let d2 = (Random.int(6+1)+1)  in

    let b = if (d1+d2) == 7 || (d1+d2) == 11 then true else false in

    (b, d1, d2)
let seven_eleven_doubles : unit -> bool * int * int = 
  fun () -> 
    let d1 = Random.int(7) in 
    let d2 = Random.int(7) in
    let sum = d1+d2 in

    if sum == 7 || sum == 11 then (true, d1, d2)
    else (false, d1, d2)


    
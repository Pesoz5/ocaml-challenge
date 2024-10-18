(*significa che non ha bisogno di un parametro per funzionare, 
  funziona un pò come void*)
let hot : unit -> string = 
  fun () ->
    if (Random.int(1000)*Random.int(100)) mod 2 == 0 then "head"
    else "tail"
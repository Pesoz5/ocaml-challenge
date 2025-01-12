let guess5 : int -> bool * int =
  fun n ->
    if n < 1 || n > 5 then failwith("error input")
    else
      let r = Random.int(5+1) in
      
      if r == n then (true, r)
      else (false, r)
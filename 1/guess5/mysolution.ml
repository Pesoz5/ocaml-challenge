let guess5 : int -> bool * int = 
  fun n ->
    if n<1 || n>5 then failwith("Number is not valid")
    else 
      let randomNum = Random.int(6) in
      if n == randomNum then (true, randomNum)
      else (false, randomNum)
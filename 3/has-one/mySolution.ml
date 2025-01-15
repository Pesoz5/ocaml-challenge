let rec has_one : int -> bool =
  fun n -> 
    if n < 0 then failwith("negative number")
    else if n == 0 then false

      else 
        if n mod 10 = 1 then true
        else has_one (n/10)
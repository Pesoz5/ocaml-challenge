let sumrange : int -> int -> int =
  fun a b ->
    let rec f sum current =
      if current > b then sum
      else f (sum + current) (current + 1)
    in 
    if a > b then 0
    else f 0 a
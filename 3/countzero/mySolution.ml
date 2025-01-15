let countzero : (int -> int) -> int -> int -> int =
 fun f a b ->
  let rec recursiveFun count x =
    if x > b then count
    else 
      if f x == 0 then recursiveFun (count + 1) (x + 1)
      else recursiveFun count (x+1)
  in
  if a > b then failwith("error")
  else recursiveFun 0 a
let xor (a : bool) (b : bool) : bool = 
  (not a && b) || (a && not b)



let xor1 (a : bool) (b : bool) : bool = 
  if a then (if b then false else true)
  else (if b then true else false) 


let xor2 (a : bool) (b : bool) : bool = 
  match (a, b) with
  | (false, false) -> false
  | (false, true) -> true
  | (true, false) -> true
  | (true, true) -> false


(*n mod 6*)

let bounce : int -> int -> int = 
  fun n p ->
    if (p mod (2*n)) <= n then p mod (2*n) else (p mod (2*n) - (2*n))*(-1)
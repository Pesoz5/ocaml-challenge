let xor1 : bool -> bool -> bool =
  fun a b ->
    (not a && b) || (a && not b)

let xor2 : bool -> bool -> bool = 
  fun a b ->
    if a then
      if b then false
      else true
    else 
      if not b then false
      else true

let xor3 : bool -> bool -> bool = 
  fun a b ->
    match (a, b) with
    | (true, true) -> false
    | (false, false) -> false
    | _ -> true

(*
F F - F
F T - T
T F - T
T T - F  
*)
let nand1 : bool -> bool -> bool =
  fun a b ->
    not (a && b)

let nand2 : bool -> bool -> bool = 
  fun a b ->
    if a then
      if b then false
      else true
    else true

let nand3 : bool -> bool -> bool = 
  fun a b ->
    match (a,b) with
    | (true, true) -> false 
    | _ -> true
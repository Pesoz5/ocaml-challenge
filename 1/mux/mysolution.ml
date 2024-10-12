let mux2L : bool -> bool -> bool -> bool =
  fun s0 a b ->
    (s0 && a) || (not s0 && b)


let mux2C : bool -> bool -> bool -> bool =
  fun s0 a b ->
    if s0 then a else b

let mux2M : bool -> bool -> bool -> bool = 
  fun s0 a b ->
    match s0 with
    | true -> a
    | false -> b

let mux4C : bool -> bool -> bool -> bool -> bool -> bool -> bool =
  fun s1 s0 a0 a1 a2 a3 -> 
    (s1 && not(mux2L s0 a2 a3)) || (not s1 && not(mux2L s0 a0 a1))

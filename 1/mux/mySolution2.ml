let mux2 : bool -> bool -> bool -> bool = 
  fun s0 a b ->
    ( a || not s0) && (b || s0)

let mux2C : bool -> bool -> bool -> bool =
  fun s0 a b ->
    if s0 then a else b
    
let mux2M : bool -> bool -> bool -> bool = 
  fun s0 a b ->
    match s0 with
    | true -> a
    | false -> b

let mux4 : bool -> bool -> bool -> bool -> bool -> bool -> bool =
  fun s1 s0 a0 a1 a2 a3 ->
    if (mux2 s1 a2 a3) == a3 then mux2 s0 a1 a0
    else mux2 s0 a3 a2
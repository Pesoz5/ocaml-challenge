

let nand a b = not (a && b)

let nand1 a b = 
    if a = true && b = true then false
    else true
        


let nand2 a b = 
    match (a, b) with
    | (false, false) -> true 
    | (false, true) -> true
    | (true, false) -> true
    | (true, true) -> false
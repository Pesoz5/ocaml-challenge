

let nand a b = not (a && b)

let nand1 a b = 
    if a = false && b = false then true
    else 
        if a = false && b = true then true
        else if a = true && b = false then true
        else false


let nand2 a b = 
    match (a, b) with
    | (false, false) -> true 
    | (false, true) -> true
    | (true, false) -> true
    | (true, true) -> false
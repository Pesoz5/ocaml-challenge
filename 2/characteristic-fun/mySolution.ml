let f1 : int -> int =
  fun x -> 
    if x<0 then failwith("non Natural") else 0

let f2 : int -> int =
  fun x ->
    match x with
    | 1 | 2 | 3 -> 1
    | x when x < 0 -> failwith("non Natural")
    | _ -> 0

let f3: int -> int =
  fun x ->
    match x with
    | x when x>0 && x<100 -> 1
    | x when x < 0 -> failwith("non Natural")
    | _ -> 0

let f4 : int -> int =
  fun x ->
    match x with
    | x when x < 0 -> failwith("non Natural")
    | _ -> 0

let f5: int -> int =
  fun x ->
    match x with
    | x when x < 0 -> failwith("non Natural")
    | _ -> 1

let f6 : int -> int =
  fun x ->
    match x with
    | x when x < 0 -> failwith("non Natural")
    | x when x mod 2 == 0 -> 1
    | _ -> 0

let f7 : int -> int =
  fun x ->
    match x with
    | x when x < 0 -> failwith("non Natural")
    | x when x mod 2 == 0 -> 1
    | _ -> 0

let f8 : int -> int = 
  fun x ->
    match x with
    | x when x < 0 -> failwith("non Natural")
    | _ -> 1

let f8 : int -> int =
  fun x ->
    match x with
    | x when x < 0 -> failwith("non Natural")
    | _ -> 1

(*y = 1 | 2*)
let f9 : int -> int =
  fun x ->
    match x with
    | x when x < 0 -> failwith("non Natural")
    | x when x > 7 && x < 20 -> 1
    | x when x*2 > 7 && x*2 < 20 -> 1
    | _ -> 0


let f10 : int -> int =
  fun x ->
    match x with
    | x when x < 0 -> failwith("non Natural")
    | x when x>=50 || x mod 2 > 0 -> 0
    | _ -> 1

let f11 : int -> int =
  fun x ->
    if x<0 then failwith("non Natural")
    else 
      if x mod 2 == 0 && (x > 0 && x < 50) then 1 else 0

(*fun12*)

let fun13 : int -> int =
  fun x -> 
    if x<0 then failwith("non Natural")
    else 
      if x >= 1 then 1 else 0

(*numeri primi se x mod y = 0, y = 1 o y = x -> da rifare con i cicli*) 
let fun14 : int -> int =
  fun x ->
    if x<0 then failwith("non Natural")
    else 1

    
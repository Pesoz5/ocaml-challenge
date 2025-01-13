(*return true if x > 0*)
let fun1 : int -> bool = 
  fun x -> x>0

(*return 1 if x true else 0 if x false*)
let fun2 : bool -> int =
  fun x -> if x then 1 else 0

(*return a pair where first item (x) is a number, the second item is true if x mod 2 = 0 else false*)
let fun3 : int -> (int * bool) =
  fun x ->
    if x mod 2 == 0 then (x, true) else (x, false)

(*(a, b) return a if b true else -a*)
let fun4 : (int*bool) -> int =
  fun (a, b) ->
    if b then a else a*(-1)

let fun5 : int -> (int -> int) =
  fun x ->
    fun y -> x + y

let fun6 : int -> (int -> bool) =
  fun x y ->
    x > y

let fun7 : bool -> (int -> bool) =
  fun a x ->
    if a && x>0 then true else false

let fun8 : bool -> (bool -> int) =
  fun a b ->
    let x = Random.int(10+1) in
    let y = Random.int(10+1) in
    if a then 
      if b then x*y
      else x* (y*(-1))
    else 
      if not b then x*y
      else x* (y*(-1))

let fun10 : (int -> int) -> int =
  fun f -> f 2

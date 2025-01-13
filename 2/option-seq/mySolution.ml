let double x = x*2
let square x = x*x
let multiply x y = x*y

let (<*>) : ('a -> 'b) option -> 'a option -> 'b option = 
  fun f x ->
    match f, x with
    | Some f, Some x -> Some (f x) 
    | _ -> None
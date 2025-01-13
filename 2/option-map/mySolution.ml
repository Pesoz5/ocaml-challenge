let option_map : ('a -> 'b) -> 'a option -> 'b option = 
  fun f x ->
    match x with
    | None -> None
    | Some x -> Some (f x) 

let double x = x*2
let square x = x*x
let restrict : ('a -> 'b) -> ('a -> bool) -> 'a -> 'b option =
  fun f p x ->
    if p x then Some (f x) else None

let f1 = restrict succ (fun x -> x>0)
let f2 = restrict (fun (x,y) -> x-y) (fun (x,y) -> x-y>=0)

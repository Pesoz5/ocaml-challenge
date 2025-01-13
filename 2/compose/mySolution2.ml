let double x = x*2
let square x = x*x

let comp : ('b -> 'c) -> ('a -> 'b) -> ('a -> 'c) =
  fun f g x ->
    f (g x)    
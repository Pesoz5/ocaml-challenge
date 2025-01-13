let double x = x*2
let square x = x*x

let (|>) : 'a -> ('a -> 'b) -> 'b =
  fun x f ->
    f x

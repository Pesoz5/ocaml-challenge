let comp : ('b -> 'c) -> ('a -> 'b) -> 'a -> 'c =
  fun fun1 fun2  x ->
    fun1 (fun2 x)


let double x = x*2;;
let square x = x*x;;
let flip : ('a -> 'b -> 'c) -> ('b -> 'a -> 'c) =
  fun fun1 x y ->
    fun1 y x 





let sub x y = x - y;;
let flipped_sub = flip sub;;
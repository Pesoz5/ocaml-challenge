let double x = x*2;;
let square x = x*x;;

let (|>) : 'a -> ('a -> 'b) -> 'b =
  fun x fun1 ->
    fun1 x



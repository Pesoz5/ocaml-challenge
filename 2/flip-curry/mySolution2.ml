let sub x y = x-y

let flip : ('a -> 'b -> 'c) -> 'b -> 'a -> 'c =
  fun f a b ->
    f b a

let flipped_sub = flip sub
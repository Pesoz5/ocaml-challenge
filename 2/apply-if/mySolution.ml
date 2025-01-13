let apply_if : ('a -> bool) -> ('a -> 'a) -> 'a -> 'a =
  fun p f x ->
    if p x then f x else x

let is_even = fun x -> x mod 2 = 0
let is_odd = fun x -> not (is_even x)
let double x = x*2


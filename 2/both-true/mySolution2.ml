let is_positive x = x>0
let is_even x = x mod 2 = 0

let both_true : ('a -> bool) -> ('a -> bool) -> 'a -> bool =
  fun f g x ->
    if f x && g x then true else false

let is_positive_and_even = both_true is_positive is_even

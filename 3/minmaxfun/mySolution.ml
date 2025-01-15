type 'a option = Some of 'a | None

let minmaxfun : (int -> 'a) -> int -> int -> ('a * 'a) option =
  fun f a b ->
    let rec recursiveFun x (min, max) =
      if x > b then Some (min, max)
      else 
        let value = f x in
        let new_min = if value < min then value else min in
        let new_max = if value > min then value else max in
        recursiveFun (x+1) (new_min, new_max)
    in
  if a > b then None
  else recursiveFun a (f a, f a)
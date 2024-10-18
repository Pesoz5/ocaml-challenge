
let minmax3 : 'a -> 'a -> 'a -> 'a * 'a = 
  fun a b c ->
    match (a, b, c) with
    | (a, b, c) when a>=c && b<=c -> (b,a )
    | (a, b, c) when a>=b && b>=c -> (c, a)
    | (a, b, c) when b>=c && c>=a -> (a, b)
    | (a, b, c) when b>=a && a>=c -> (c, b)
    | (a, b, c) when c>=b && b>=a -> (a, c)
    | (a, b, c) when c>=a && a>=b -> (b, c)
    | _ -> (a, a)


let minmax3e : 'a -> 'a -> 'a -> 'a * 'a =
  fun a b c ->
  let minValue = min a (min b c) in
  let maxValue = max a (max b c) in
  (minValue, maxValue)
let is_even : int -> bool = 
  fun x ->
    match x with
    | x when x mod 2 == 0 -> true
    | _ -> false

let win : int -> int -> int = 
  fun a b ->
    if (a < 1 || a > 5) && (b < 1 || b > 5) then 0
    else 
      if (a < 1 || a > 5) && (b >= 1 && b <= 5) then -1
      else 
        if (a >= 1 && a <= 5) && (b < 1 || b > 5) then 1
        else 
          if (is_even (a+b)) then 1
          else -1
    
    
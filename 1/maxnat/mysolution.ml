let max_nat : int -> int -> int =
  fun a b ->
    if (a < 0) || (b < 0) then failwith("This function always fails")
    else
      if a > b then a else b
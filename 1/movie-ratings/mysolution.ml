let movie_rating : int -> int -> int -> string =
  fun rat1 rat2 rat3 ->
    if ((rat1 < 0 || rat1 > 5) && (rat2 < 0 || rat2 > 5) && (rat3 < 0 || rat3 > 5)) then failwith("Inputs are not in the expected range")
    else 
      match (rat1, rat2, rat3) with 
      | (5, 5, 5) -> "Masterpiece"
      
      | (5, 5, 4) -> "Highly Recommended"
      | (5, 4, 5) -> "Highly Recommended"
      | (4, 5, 5) -> "Highly Recommended"

      | (x, y, 3) when x >= 4 && y >= 4 -> "Recommended"
      | (x, 3, y) when x >= 4 && y >= 4 -> "Recommended"
      | (3, x, y) when x >= 4 && y >= 4 -> "Recommended"

      | _ -> "Mixed Reviews"
(*Some x -> offer x | None -> no offer is made*)

let max : int option -> int option -> int option -> int option =
  fun a b c ->
    if a > b && a > c then a
    else 
      if b > a && b > c then b
      else c 
      
let best_offer : int option -> int option -> int option -> int option =
  fun offer1 offer2 offer3 ->
    match (offer1, offer2, offer3) with
    | (None, None, None) -> None
    | (offer1, offer2, offer3) -> max offer1 offer2 offer3




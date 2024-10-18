let best_offer : int option -> int option -> int option -> int option =
  fun of1 of2 of3 ->
    match (of1, of2, of3) with 
    | (None, None, None) -> None

    | (Some x, None, None) 
    | (None, Some x, None)
    | (None, None, Some x) -> Some x

    | (Some x, Some y, None) 
    | (Some x, None, Some y)  
    | (None, Some x, Some y) -> Some (max x y) 
    
    | (Some of1, Some of2, Some of3) ->
        if (Some of1 >= Some of2 && Some of1 >= Some of3) then Some of1
        else 
          if(Some of2 >= Some of1 && Some of2 >= Some of3) then Some of2
          else Some of3

        
        
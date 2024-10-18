type card = Joker | Val of int

let win : card -> card -> bool =
  fun cardPlayer cardDealer ->
    if (cardPlayer != Joker) && (cardPlayer < Val 1 || cardPlayer > Val 10) || (cardDealer != Joker && (cardDealer < Val 1 || cardDealer > Val 10))  then failwith("Cards are not valid")
    else 
    match(cardPlayer, cardDealer) with
    | (Joker, y) when y != Joker -> true
    | (x, Joker) when x != Joker -> false
    | (Joker, Joker) -> false
    | _ -> if (max cardPlayer cardDealer) == cardPlayer then true else false
type card = Joker | Val of int;;

let win : card -> card -> bool =
  fun player dealer ->
    match (player, dealer) with
    | (Joker, Joker) -> false
    | (Joker, _) -> true
    | (_, Joker) -> false
    | (Val player,Val dealer) when player > dealer -> true
    | _ -> false
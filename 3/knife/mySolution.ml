let knife : 'a list -> int -> 'a list * 'a list =
  fun list pos ->
    let rec recursiveFun count (leftList, rightList) pos =
      if List.length rightList + List.length leftList < pos || pos < 0 then ([],  rightList)
      else 
        match rightList with
        | [] -> ([], [])
        | h :: t -> 
          if count == pos then (leftList @ [h], t)
          else recursiveFun (count+1) (leftList @ [h], t) pos
    in
    recursiveFun 1 ([], list) pos
    
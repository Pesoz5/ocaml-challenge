let is_palindrome : 'a list -> bool = 
  fun list ->
    let rec reverseFun l =
      match l with
      | [] -> []
      | h :: t -> 
        let reverseList = reverseFun t in
        reverseList @ [h]
    in
    let rec check l1 l2 =
     match l1, l2 with
     | [], [] -> true
     | h1 :: t1, h2 :: t2 -> if h1 == h2 then check t1 t2 else false
     | [], _ -> false
     | _, [] -> false
    in
    let reverseList = reverseFun list in
    check list reverseList


let string_of_list : int list -> string =
  fun list ->
    let rec recursiveFun list string=
      match list with
      | [] -> ""
      | [x] -> string ^ string_of_int x
      | h :: t ->
        recursiveFun t (string ^ string_of_int h ^ ";")
    in
    "[" ^ (recursiveFun list "") ^ "]"

    
      
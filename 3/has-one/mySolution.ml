let has_one : int -> bool =
  fun n -> 
    if n < 0 then failwith("negative number")
    else
      let str_n = string_of_int n in
      String.exists (fun c -> c = '1' ) str_n

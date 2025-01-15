type grade = Val of int | CumLaude

let is_valid grade =
  match grade with
  | CumLaude -> true
  | Val x when x >= 18 && x <= 30 -> true
  | _ -> false

let int_of_grade : grade -> int =
  fun grade ->
    match grade with
    | Val x when x >= 18 && x <= 30 -> x
    | CumLaude -> 32
    | _ -> failwith("non valid grade")

let avg : grade list -> float =
  fun gradeList ->
    let rec recursiveFun sum  list =
      match list with
      | [] -> sum
      | h :: t ->
        if is_valid h then recursiveFun (sum + int_of_grade h) t else failwith("error") 
    in
    let s = recursiveFun 0 gradeList in
    Float.of_int s /. Float.of_int (List.length gradeList)

let avg_norec : grade list -> float =
  fun gradeList ->
    gradeList |>  List.map (function Val n -> n | CumLaude -> 32) 
              |> fun f ->
                let sum = List.fold_left (fun acc x -> acc + x) 0 f in
                let count = List.length gradeList in
                if count = 0 then failwith "empty list"
                else Float.of_int sum /. Float.of_int count
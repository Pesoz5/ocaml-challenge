type weekday = MO | TU | WE | TH | FR 
type course = ALF | LIP

let isLecture : weekday -> course -> bool = 
  fun day lecture ->
    match (day, lecture) with
    | (WE, LIP) -> true
    | (TH, LIP) -> true
    | (_, LIP) -> false
    | (WE, ALF) -> false
    | (MO, ALF) -> false
    | _ -> true 
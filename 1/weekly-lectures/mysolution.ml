type weekday = MO | TU | WE | TH | FR 
type course = ALF | LIP

let isLecture : weekday -> course -> bool = 
  fun d c ->
    if (c = ALF) && ((d = TU || d = TH || d = FR)) then true
    else 
      if (c = LIP) && (d = WE || d = TH) then true
      else false

let isLecture2 : weekday -> course -> bool = 
  fun d c ->
    match c with 
    | ALF -> (d = TU || d = TH || d = FR)
    | LIP -> (d = WE ||d =  TH) 
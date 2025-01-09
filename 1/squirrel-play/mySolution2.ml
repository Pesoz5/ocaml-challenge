type season = SPRING | SUMMER | AUTUMN | WINTER

let squirrel_play : int -> season -> bool =
  fun deg season ->
    if season == SUMMER then 
      if deg >= 15 && deg <= 35 then true
      else false
    else 
      if deg >= 15 && deg <= 30 then true
      else false
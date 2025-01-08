type blood_group = A | B | AB | O

let check_groups : blood_group -> blood_group -> bool = 
  fun pat1 pat2 ->
    match (pat1, pat2) with
    | (B, B) -> true
    | (B, AB) -> true
    | (B, _) -> false
    | (A, A) -> true
    | (A, AB) -> true
    | (A, _) -> false
    | (AB, AB) -> true
    |(AB, _) -> false
    | (O, _) -> true
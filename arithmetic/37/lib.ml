let factors n =
    let rec factors_rec d n =
      if n = 1 then [] else
        if n mod d = 0 then
          match factors_rec d (n / d) with
          | (h, n)::t when h = d -> (h, n + 1)::t
          | l -> (d, 1) :: l
        else factors_rec (d + 1) n
    in
    factors_rec 2 n

let rec pow x = function
    | 0 -> 1
    | n -> x * (pow x (n - 1)) 

let phi_improved m =
    if m == 1 then 1
    else 
        let m_factors = factors m in
        let rec phi_rec = function
            | [] -> 1
            | (h, n)::t -> (h - 1) * (pow h (n - 1)) * (phi_rec t)
        in phi_rec m_factors

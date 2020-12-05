let encode lst =
    let rec encode_rec ctr = function
        | h1::(h2::_ as t) -> if h1 = h2
            then encode_rec (ctr + 1) t
            else (ctr + 1, h1)::(encode_rec 0 t)
        | [x] -> [ctr + 1, x]
        | [] -> []
    in encode_rec 0 lst

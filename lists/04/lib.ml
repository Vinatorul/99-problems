let length lst =
    let rec length_rec k = function
        | [] -> k
        | _::t -> length_rec (k + 1) t
    in length_rec 0 lst

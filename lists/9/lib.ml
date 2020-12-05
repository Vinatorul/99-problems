let pack lst =
    let rec pack_rec tmp = function
        | h1::(h2::_ as t) -> if h1 = h2
            then pack_rec (h1::tmp) t
            else (h1::tmp)::(pack_rec [] t)
        | [x] -> [x::tmp]
        | [] -> []
    in pack_rec [] lst

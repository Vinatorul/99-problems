open Option

let rec at k = function
    | [] -> None
    | h::t -> match k with
        | 1 -> Some h
        | _ -> at (k - 1) t

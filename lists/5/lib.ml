let rec rev = function
    | [] -> []
    | h::t -> (rev t) @ [h]

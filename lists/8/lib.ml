let rec compress = function
    | h1::(h2::_ as t) -> if h1 = h2
        then compress t
        else h1::(compress t)
    | other -> other
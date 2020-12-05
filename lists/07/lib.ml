type 'a node =
    | One of 'a 
    | Many of 'a node list;;

let rec flatten = function
    | [] -> []
    | h::t -> match h with
        | One x -> x :: flatten t
        | Many x -> (flatten x) @ (flatten t) 

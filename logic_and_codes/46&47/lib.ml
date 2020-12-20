type bool_expr =
    | Var of string
    | Not of bool_expr
    | And of bool_expr * bool_expr
    | Or of bool_expr * bool_expr;;

let table2 a b expression =
    let rec table2_rec value_of_a value_of_b = function
        | Var(x) -> 
            if x == a then
                value_of_a
            else if x == b then
                value_of_b
            else
                false
        | Not(t) -> not (table2_rec value_of_a value_of_b t)
        | And(expr_1, expr_2) -> 
            (table2_rec value_of_a value_of_b expr_1) &&    
            (table2_rec value_of_a value_of_b expr_2)
        | Or(expr_1, expr_2) -> 
            (table2_rec value_of_a value_of_b expr_1) ||    
            (table2_rec value_of_a value_of_b expr_2)
    in let table2_aux value_of_a value_of_b expression =
        (value_of_a, value_of_b, (table2_rec value_of_a value_of_b expression))
    in [table2_aux true true expression;
        table2_aux true false expression;
        table2_aux false true expression;
        table2_aux false false expression]

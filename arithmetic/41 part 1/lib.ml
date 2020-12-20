let is_prime n =
    let n = abs n in
    let rec is_prime_rec n i =
        i * i > n || (n mod i <> 0 && is_prime_rec n (i + 1))
    in n > 1 && is_prime_rec n 2

let goldbach n = 
    if n mod 2 == 1 then
        (-1, -1)
    else if n == 4 then
        (2, 2)
    else 
        let rec goldbach_rec n i =
            if i > (n / 2) then
                (-1, -1)
            else if (is_prime i) && (is_prime (n - i)) then
                (i, n - i)
            else
                goldbach_rec n (i + 1)
        in goldbach_rec n 3

let rec goldbach_list left right =
    if left > right then
        []
    else 
        let tmp_list = goldbach_list (left + 1) right
        in if left mod 2 == 0 && left != 2 then
            (left, (goldbach left))::tmp_list
        else
            tmp_list

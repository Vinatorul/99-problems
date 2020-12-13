let is_prime n =
    let n = abs n in
    let rec is_prime_rec n i =
        i * i > n || (n mod i <> 0 && is_prime_rec n (i + 1))
    in n > 1 && is_prime_rec n 2

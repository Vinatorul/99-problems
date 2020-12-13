let is_prime n =
    let n = abs n in
    let rec is_prime_rec n i =
        i * i > n || (n mod i <> 0 && is_prime_rec n (i + 1))
    in n > 1 && is_prime_rec n 2

let rec all_primes a b =
  if a > b then []
  else if is_prime a then
    a::(all_primes (a + 1) b) 
  else
    all_primes (a + 1) b

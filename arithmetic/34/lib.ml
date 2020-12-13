let rec gcd a b =
    if b == 0 then a
    else gcd b (a mod b) 

let coprime a b =
    gcd a b == 1

let phi m = 
    if m == 1 then 1
    else
        let rec phi_rec m i = 
            if m == i then 0
            else if coprime m i then
                1 + (phi_rec m (i + 1))
            else
                phi_rec m (i + 1)
        in phi_rec m 1

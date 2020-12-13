let factors m = 
    if m == 1 then [1]
    else
        let rec factors_rec m i =
            if i * i > m then [m]
            else if m mod i == 0 then i::(factors_rec (m / i) i)
            else factors_rec m (i + 1)
        in factors_rec m 2

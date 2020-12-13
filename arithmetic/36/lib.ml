let factors m = 
    if m == 1 then [(1, 1)]
    else
        let rec factors_rec m i acc prev =
            if i * i > m then
                if m == prev || acc == 0 then
                    [(m, acc + 1)]
                else 
                    [(prev, acc); (m, 1)]
            else if m mod i <> 0 then
                if acc > 0 then
                    (prev, acc)::(factors_rec m (i + 1) 0 (-1))
                else 
                    factors_rec m (i + 1) 0 (-1)
            else
                factors_rec (m / i) i (acc + 1) i
        in factors_rec m 2 0 (-1)

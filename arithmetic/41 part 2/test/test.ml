open OUnit2

let test_small _ =
    assert_equal [(6, (3, 3)); (8, (3, 5)); (10, (3, 7))] (Lib.goldbach_limit 1 10 3);
    assert_equal [(12, (5, 7)); (18, (5, 13))] (Lib.goldbach_limit 9 20 5)

let test_empty _ = 
    assert_equal [] (Lib.goldbach_limit 1 3 1);
    assert_equal [] (Lib.goldbach_limit 1 10 4);
    assert_equal [] (Lib.goldbach_limit 9 20 7);
    assert_equal [] (Lib.goldbach_limit 1000011 1000020 60)

let test_large _ = 
    assert_equal [(1000012, (29, 999983)); (1000018, (59, 999959))] (Lib.goldbach_limit 1000011 1000020 25);
    assert_equal [(992, (73, 919)); (1382, (61, 1321)); (1856, (67, 1789));
 (1928, (61, 1867))] (Lib.goldbach_limit 1 2000 50)

let suite =
  "TestFirst" >::: [
    "test_small" >:: test_small;
    "test_empty" >:: test_empty;
    "test_large" >:: test_large
  ]

let () =
  run_test_tt_main suite

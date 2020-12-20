open OUnit2

let test_small _ =
    assert_equal [(4, (2, 2)); (6, (3, 3)); (8, (3, 5)); (10, (3, 7))] (Lib.goldbach_list 1 10);
    assert_equal [(10, (3, 7)); (12, (5, 7)); (14, (3, 11)); (16, (3, 13)); (18, (5, 13)); (20, (3, 17))] (Lib.goldbach_list 9 20)

let test_empty _ = 
    assert_equal [] (Lib.goldbach_list 1 3)

let test_large _ = 
    assert_equal [(1000012, (29, 999983)); (1000014, (11, 1000003)); (1000016, (13, 1000003)); (1000018, (59, 999959)); (1000020, (17, 1000003))] (Lib.goldbach_list 1000011 1000020)

let suite =
  "TestFirst" >::: [
    "test_small" >:: test_small;
    "test_empty" >:: test_empty;
    "test_large" >:: test_large
  ]

let () =
  run_test_tt_main suite

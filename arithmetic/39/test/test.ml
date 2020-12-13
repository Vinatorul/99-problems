open OUnit2

let test_small _ =
    assert_equal [2; 3; 5; 7] (Lib.all_primes 1 10);
    assert_equal [2; 3; 5; 7] (Lib.all_primes 2 10);
    assert_equal [3; 5; 7] (Lib.all_primes 3 10);
    assert_equal [3; 5; 7; 11] (Lib.all_primes 3 11);
    assert_equal [23; 29; 31] (Lib.all_primes 20 35)

let test_large _ =
    assert_equal 1000 (List.length (Lib.all_primes 2 7920));
    assert_equal 999 (List.length (Lib.all_primes 3 7920));
    assert_equal 998 (List.length (Lib.all_primes 4 7920));
    assert_equal 998 (List.length (Lib.all_primes 5 7920));
    assert_equal 997 (List.length (Lib.all_primes 6 7920));
    assert_equal 996 (List.length (Lib.all_primes 10 7920))

let suite =
  "TestFirst" >::: [
    "test_small" >:: test_small;
    "test_large" >:: test_large
  ]

let () =
  run_test_tt_main suite

open OUnit2

let test_one _ =
    assert_equal [1] (Lib.factors 1)

let test_prime _ =
    assert_equal [2] (Lib.factors 2);
    assert_equal [3] (Lib.factors 3);
    assert_equal [5] (Lib.factors 5);
    assert_equal [7] (Lib.factors 7);
    assert_equal [11] (Lib.factors 11);
    assert_equal [31] (Lib.factors 31);
    assert_equal [228228227] (Lib.factors 228228227)

let test_non_prime _ =
    assert_equal [2; 2] (Lib.factors 4);
    assert_equal [2; 2; 2] (Lib.factors 8);
    assert_equal [2; 3; 5] (Lib.factors 30);
    assert_equal [2; 2; 2; 5; 5; 5] (Lib.factors 1000);
    assert_equal [63149; 68669] (Lib.factors (63149 * 68669))

let suite =
  "TestFirst" >::: [
    "test_one" >:: test_one;
    "test_prime" >:: test_prime;
    "test_non_prime" >:: test_non_prime
  ]

let () =
  run_test_tt_main suite

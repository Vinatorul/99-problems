open OUnit2

let test_one _ =
    assert_equal false (Lib.is_prime 1)

let test_prime _ =
    assert_equal true (Lib.is_prime 2);
    assert_equal true (Lib.is_prime 3);
    assert_equal true (Lib.is_prime 5);
    assert_equal true (Lib.is_prime 31);
    assert_equal true (Lib.is_prime 228228227);
    assert_equal true (Lib.is_prime (-2));
    assert_equal true (Lib.is_prime (-3));
    assert_equal true (Lib.is_prime (-5));
    assert_equal true (Lib.is_prime (-31));
    assert_equal true (Lib.is_prime (-228228227))

let test_non_prime _ =
    assert_equal false (Lib.is_prime 0);
    assert_equal false (Lib.is_prime 4);
    assert_equal false (Lib.is_prime 6);
    assert_equal false (Lib.is_prime 12);
    assert_equal false (Lib.is_prime 15);
    assert_equal false (Lib.is_prime 35);
    assert_equal false (Lib.is_prime (63149 * 68669));
    assert_equal false (Lib.is_prime (-4));
    assert_equal false (Lib.is_prime (-6));
    assert_equal false (Lib.is_prime (-12));
    assert_equal false (Lib.is_prime (-15));
    assert_equal false (Lib.is_prime (-35));
    assert_equal false (Lib.is_prime (-63149 * 68669))

let suite =
  "TestFirst" >::: [
    "test_one" >:: test_one;
    "test_prime" >:: test_prime;
    "test_non_prime" >:: test_non_prime
  ]

let () =
  run_test_tt_main suite

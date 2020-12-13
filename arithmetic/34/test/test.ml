open OUnit2

let test_one _ =
    assert_equal 1 (Lib.phi 1)

let test_prime _ =
    assert_equal 1 (Lib.phi 2);
    assert_equal 2 (Lib.phi 3);
    assert_equal 4 (Lib.phi 5);
    assert_equal 6 (Lib.phi 7);
    assert_equal 10 (Lib.phi 11);
    assert_equal 30 (Lib.phi 31)

let test_non_prime _ =
    assert_equal 2 (Lib.phi 4);
    assert_equal 4 (Lib.phi 8);
    assert_equal 8 (Lib.phi 30);
    assert_equal 400 (Lib.phi 1000);
    assert_equal 26400 (Lib.phi 100500)

let suite =
  "TestFirst" >::: [
    "test_one" >:: test_one;
    "test_prime" >:: test_prime;
    "test_non_prime" >:: test_non_prime
  ]

let () =
  run_test_tt_main suite

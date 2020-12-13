open OUnit2

let test_one _ =
    assert_equal 1 (Lib.phi_improved 1)

let test_prime _ =
    assert_equal 1 (Lib.phi_improved 2);
    assert_equal 2 (Lib.phi_improved 3);
    assert_equal 4 (Lib.phi_improved 5);
    assert_equal 6 (Lib.phi_improved 7);
    assert_equal 10 (Lib.phi_improved 11);
    assert_equal 30 (Lib.phi_improved 31);
    assert_equal 228228226 (Lib.phi_improved 228228227)

let test_non_prime _ =
    assert_equal 2 (Lib.phi_improved 4);
    assert_equal 4 (Lib.phi_improved 8);
    assert_equal 8 (Lib.phi_improved 30);
    assert_equal 400 (Lib.phi_improved 1000);
    assert_equal 26400 (Lib.phi_improved 100500);
    assert_equal 4336246864 (Lib.phi_improved (63149 * 68669))

let suite =
  "TestFirst" >::: [
    "test_one" >:: test_one;
    "test_prime" >:: test_prime;
    "test_non_prime" >:: test_non_prime
  ]

let () =
  run_test_tt_main suite

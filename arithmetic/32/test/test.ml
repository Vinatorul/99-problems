open OUnit2

let test_zeros _ =
    assert_equal 0 (Lib.gcd 0 0);
    assert_equal 10 (Lib.gcd 0 10);
    assert_equal 10 (Lib.gcd 10 0)

let test_coprime _ =
    assert_equal 1 (Lib.gcd 2 3);
    assert_equal 1 (Lib.gcd 7 31);
    assert_equal 1 (Lib.gcd 35 6);
    assert_equal 1 (Lib.gcd 8 11);
    assert_equal 1 (Lib.gcd 11 8)

let test_non_coprime _ =
    assert_equal 2 (Lib.gcd 2 4);
    assert_equal 5 (Lib.gcd 35 50);
    assert_equal 100 (Lib.gcd 100 1000);
    assert_equal 100 (Lib.gcd 1000 100)

let suite =
  "TestFirst" >::: [
    "test_zeros" >:: test_zeros;
    "test_coprime" >:: test_coprime;
    "test_non_coprime" >:: test_non_coprime
  ]

let () =
  run_test_tt_main suite

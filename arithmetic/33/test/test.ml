open OUnit2

let test_zeros _ =
    assert_equal false (Lib.coprime 0 0);
    assert_equal false (Lib.coprime 0 10);
    assert_equal false (Lib.coprime 10 0)

let test_coprime _ =
    assert_equal true (Lib.coprime 2 3);
    assert_equal true (Lib.coprime 7 31);
    assert_equal true (Lib.coprime 35 6);
    assert_equal true (Lib.coprime 8 11);
    assert_equal true (Lib.coprime 11 8)

let test_non_coprime _ =
    assert_equal false (Lib.coprime 2 4);
    assert_equal false (Lib.coprime 35 50);
    assert_equal false (Lib.coprime 100 1000);
    assert_equal false (Lib.coprime 1000 100)

let suite =
  "TestFirst" >::: [
    "test_zeros" >:: test_zeros;
    "test_coprime" >:: test_coprime;
    "test_non_coprime" >:: test_non_coprime
  ]

let () =
  run_test_tt_main suite

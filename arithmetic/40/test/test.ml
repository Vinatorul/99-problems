open OUnit2

let test_even _ =
    assert_equal (2, 2) (Lib.goldbach 4);
    assert_equal (3, 3) (Lib.goldbach 6);
    assert_equal (3, 5) (Lib.goldbach 8);
    assert_equal (5, 23) (Lib.goldbach 28);
    assert_equal (3, 997) (Lib.goldbach 1000);
    assert_equal (29, 9973) (Lib.goldbach 10002);
    assert_equal (13, 99991) (Lib.goldbach 100004)

let test_odd _ = 
    assert_equal (-1, -1) (Lib.goldbach 5);
    assert_equal (-1, -1) (Lib.goldbach 7);
    assert_equal (-1, -1) (Lib.goldbach 9);
    assert_equal (-1, -1) (Lib.goldbach 11);
    assert_equal (-1, -1) (Lib.goldbach 23);
    assert_equal (-1, -1) (Lib.goldbach 25)


let suite =
  "TestFirst" >::: [
    "test_even" >:: test_even;
    "test_odd" >:: test_odd
  ]

let () =
  run_test_tt_main suite

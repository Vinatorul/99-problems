open OUnit2

let test_empty_list _ =
    assert_equal None (Lib.last [])

let test_non_empty_list _ = 
    assert_equal (Some 4) (Lib.last [4]);
    assert_equal (Some 3) (Lib.last [1; 2; 3])

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_list" >:: test_non_empty_list
  ]

let () =
  run_test_tt_main suite

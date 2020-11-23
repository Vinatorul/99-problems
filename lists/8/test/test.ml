open OUnit2

let test_empty_list _ =
    assert_equal [] (Lib.compress [])

let test_non_empty_int_list _ =
    assert_equal [4] (Lib.compress [4]);
    assert_equal [3; 4; 5] (Lib.compress [3; 3; 4; 4; 4; 5; 5]);
    assert_equal [3; 4; 5] (Lib.compress [3; 4; 4; 4; 5; 5]);
    assert_equal [3; 4; 5] (Lib.compress [3; 3; 4; 4; 4; 5])

let test_non_empty_string_list _ =
    assert_equal ["a"] (Lib.compress ["a"]);
    assert_equal ["a"; "b"; "c"] (Lib.compress ["a"; "a"; "b"; "b"; "b"; "c"; "c"]);
    assert_equal ["a"; "b"; "c"] (Lib.compress ["a"; "b"; "b"; "b"; "c"; "c"]);
    assert_equal ["a"; "b"; "c"] (Lib.compress ["a"; "a"; "b"; "b"; "b"; "c";])

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

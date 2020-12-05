open OUnit2

let test_empty_list _ =
    assert_equal 0 (Lib.length [])

let test_non_empty_int_list _ =
    assert_equal 1 (Lib.length [4]);
    assert_equal 5 (Lib.length [1; 2; 3; 4; 5])

let test_non_empty_string_list _ =
    assert_equal 1 (Lib.length ["a"]);
    assert_equal 5 (Lib.length ["a"; "b"; "c"; "d"; "e"])

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

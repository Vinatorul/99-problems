open OUnit2

let test_empty_list _ =
    assert_equal None (Lib.at 0 []);
    assert_equal None (Lib.at 1 []);
    assert_equal None (Lib.at 999 [])

let test_non_empty_int_list _ =
    assert_equal (Some 4) (Lib.at 1 [4]);
    assert_equal (Some 3) (Lib.at 3 [1; 2; 3; 4; 5]);
    assert_equal None (Lib.at 55 [1; 2; 3; 4; 5])

let test_non_empty_string_list _ =
    assert_equal (Some "a") (Lib.at 1 ["a"]);
    assert_equal (Some "c") (Lib.at 3 ["a"; "b"; "c"; "d"; "e"]);
    assert_equal None (Lib.at 34 ["a"; "b"; "c"; "d"; "e"])

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

open OUnit2

let test_empty_list _ =
    assert_equal None (Lib.last [])

let test_non_empty_int_list _ =
    assert_equal (Some 4) (Lib.last [4]);
    assert_equal (Some 3) (Lib.last [1; 2; 3])

let test_non_empty_string_list _ =
    assert_equal (Some "abc") (Lib.last ["abc"]);
    assert_equal (Some "world") (Lib.last [""; "world"]);
    assert_equal (Some "!") (Lib.last ["Hello"; ","; "world"; "!"])

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

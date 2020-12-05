open OUnit2

let test_empty_list _ =
    assert_equal true (Lib.is_palindrome [])

let test_non_empty_int_list _ =
    assert_equal true (Lib.is_palindrome [4]);
    assert_equal true (Lib.is_palindrome [4; 4]);
    assert_equal false (Lib.is_palindrome [4; 5]);
    assert_equal true (Lib.is_palindrome [4; 5; 4])

let test_non_empty_string_list _ =
    assert_equal true (Lib.is_palindrome ["abc"]);
    assert_equal true (Lib.is_palindrome ["abc"; "abc"]);
    assert_equal false (Lib.is_palindrome ["abc"; "cde"]);
    assert_equal true (Lib.is_palindrome ["abc"; "cde"; "abc"])

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

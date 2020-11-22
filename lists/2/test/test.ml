open OUnit2

let test_empty_response _ =
    assert_equal None (Lib.last_two []);
    assert_equal None (Lib.last_two [1]);
    assert_equal None (Lib.last_two ["abcd"])

let test_non_empty_int_list _ = 
    assert_equal (Some (3, 4)) (Lib.last_two [3; 4]);
    assert_equal (Some (9, 10)) (Lib.last_two [1; 2; 3; 9; 10])

let test_non_empty_string_list _ =
    assert_equal (Some ("ab", "cd")) (Lib.last_two ["ab"; "cd"]);
    assert_equal (Some ("Hello", "world")) (Lib.last_two ["Hello"; "world"]);
    assert_equal (Some ("world", "!")) (Lib.last_two ["Hello"; ","; "world"; "!"])

let suite =
  "TestFirst" >::: [
    "test_empty_response" >:: test_empty_response;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

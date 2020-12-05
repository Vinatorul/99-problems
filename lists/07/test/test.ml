open OUnit2
open Lib

let test_empty_list _ =
    assert_equal [] (Lib.flatten [])

let test_non_empty_int_list _ =
    assert_equal [4] (Lib.flatten [One 4]);
    let lst = [One 1; Many [One 2; Many [One 3; One 4]; One 5]]
    and flatten_lst = [1; 2; 3; 4; 5]
    in assert_equal flatten_lst (Lib.flatten lst)

let test_non_empty_string_list _ =
    assert_equal ["abc"] (Lib.flatten [One "abc"]);
    let lst = [One "a"; Many [One "b"; Many [One "c"; One "d"]; One "e"]]
    and flatten_lst = ["a"; "b"; "c"; "d"; "e"]
    in assert_equal flatten_lst (Lib.flatten lst)

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

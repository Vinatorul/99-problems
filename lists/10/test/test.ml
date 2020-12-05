open OUnit2

let test_empty_list _ =
    assert_equal [] (Lib.encode [])

let test_non_empty_int_list _ =
    assert_equal [(1, 4)] (Lib.encode [4]);
    assert_equal [(2, 4)] (Lib.encode [4; 4]);
    assert_equal [(2, 3); (3, 4); (2, 5)] (Lib.encode [3; 3; 4; 4; 4; 5; 5]);
    assert_equal [(1, 3); (3, 4); (2, 5)] (Lib.encode [3; 4; 4; 4; 5; 5]);
    assert_equal [(2, 3); (3, 4); (1, 5)] (Lib.encode [3; 3; 4; 4; 4; 5])

let test_non_empty_string_list _ =
    assert_equal [(1, "a")] (Lib.encode ["a"]);
    assert_equal [(2, "a")] (Lib.encode ["a"; "a"]);
    assert_equal [(2, "a"); (3, "b"); (2, "c")] (Lib.encode ["a"; "a"; "b"; "b"; "b"; "c"; "c"]);
    assert_equal [(1, "a"); (3, "b"); (2, "c")] (Lib.encode ["a"; "b"; "b"; "b"; "c"; "c"]);
    assert_equal [(2, "a"); (3, "b"); (1, "c")] (Lib.encode ["a"; "a"; "b"; "b"; "b"; "c"])

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

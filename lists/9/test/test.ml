open OUnit2

let test_empty_list _ =
    assert_equal [] (Lib.pack [])

let test_non_empty_int_list _ =
    assert_equal [[4]] (Lib.pack [4]);
    assert_equal [[4; 4]] (Lib.pack [4; 4]);
    assert_equal [[3; 3]; [4; 4; 4]; [5; 5]] (Lib.pack [3; 3; 4; 4; 4; 5; 5]);
    assert_equal [[3]; [4; 4; 4]; [5; 5]] (Lib.pack [3; 4; 4; 4; 5; 5]);
    assert_equal [[3; 3]; [4; 4; 4]; [5]] (Lib.pack [3; 3; 4; 4; 4; 5])

let test_non_empty_string_list _ =
    assert_equal [["a"]] (Lib.pack ["a"]);
    assert_equal [["a"; "a"]; ["b"; "b"; "b"]; ["c"; "c"]] (Lib.pack ["a"; "a"; "b"; "b"; "b"; "c"; "c"]);
    assert_equal [["a"]; ["b"; "b"; "b"]; ["c"; "c"]] (Lib.pack ["a"; "b"; "b"; "b"; "c"; "c"]);
    assert_equal [["a"; "a"]; ["b"; "b"; "b"]; ["c"]] (Lib.pack ["a"; "a"; "b"; "b"; "b"; "c"])

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

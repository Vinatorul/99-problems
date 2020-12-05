open OUnit2

let test_empty_list _ =
    assert_equal [] (Lib.rev [])

let test_non_empty_int_list _ =
    assert_equal [4] (Lib.rev [4]);
    let lst = [1; 2; 3; 4; 5] in
    assert_equal (List.rev lst) (Lib.rev lst)

let test_non_empty_string_list _ =
    assert_equal ["a"] (Lib.rev ["a"]);
    let lst = ["a"; "b"; "c"; "d"; "e"] in
    assert_equal (List.rev lst) (Lib.rev lst)

let suite =
  "TestFirst" >::: [
    "test_empty_list" >:: test_empty_list;
    "test_non_empty_int_list" >:: test_non_empty_int_list;
    "test_non_empty_string_list" >:: test_non_empty_string_list
  ]

let () =
  run_test_tt_main suite

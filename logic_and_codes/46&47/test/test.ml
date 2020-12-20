open OUnit2

let test_conj _ =
   assert_equal [(true, true, true); (true, false, false); (false, true, false);
 (false, false, false)] (Lib.table2 "a" "b" (And(Var "a", Var "b")))

let test_disj _ =
   assert_equal [(true, true, true); (true, false, true); (false, true, true);
 (false, false, false)] (Lib.table2 "a" "b" (Or(Var "a", Var "b")))

let test_not _ =
   assert_equal [(true, true, false); (true, false, false); (false, true, true);
 (false, false, true)] (Lib.table2 "a" "b" (Not(Var "a")));
   assert_equal [(true, true, false); (true, false, true); (false, true, false);
 (false, false, true)] (Lib.table2 "a" "b" (Not(Var "b")))

let test_sample _ =
   assert_equal [(true, true, true); (true, false, true); (false, true, false);
 (false, false, false)] (Lib.table2 "a" "b" (And(Var "a", Or(Var "a", Var "b"))))

let suite =
  "TestFirst" >::: [
    "test_sample" >:: test_sample;
    "test_conj" >:: test_conj;
    "test_disj" >:: test_disj;
    "test_not" >:: test_not;
  ]

let () =
  run_test_tt_main suite

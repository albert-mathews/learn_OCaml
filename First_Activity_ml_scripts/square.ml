open Base
open Stdio

let square x = x * x

(* let pp_int_pair ppf (x,y) =
  printf ppf "%d %d\n" x y *)

let () =
  printf "prog step %d\n" 0;
  let aaa = 1 in
  printf "prog step %d\n" aaa;
  let a_tuple = (3, "three") in
  let (x,y) = a_tuple in
  printf "x %d y %s\n" x y

  (* let (x,y) = find (99,10) in
    printf "%d %d\n" x y *)
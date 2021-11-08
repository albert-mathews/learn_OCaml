
(* this is a comment *)
(* let a = [] *)
(* print_list ll *)

(* open Format *)
(* open Base *)

(* let name = "second"; *)
(*
let fun x =
  let y = blabla in
  code_returning_unit; (* Use ; for unit returns *)
  return_value;; (* Use ;; for end of fun *)
*)

let () = 
  Printf.printf "first, %s\n%!" "name";

(* let () = 
  Printf.printf "Hello, %s world\n%!" "cruel";
  Printf.printf "Hello, %d times!\n%!" 42; *)

print_string "Hello world!\n";

(* let square x = x * x
square 2 *)



(* let rec factorial n =
  if n = 0 then 1
  else n * (factorial (n-1)) *)

(* let rec total l =
  match l with
  | [] -> 0
  | h :: t -> h + total t *)

(* let a = 1; *)

print_int (5+5354654);
print_string "\n";

if (5>3) then print_int 5 else print_int 3;
print_string "\n";

if ((5 mod 3) < 3 ) then print_int 10 else print_int 1;
print_string "\n";

(* let variable_name = 5 ;; *)

(* let equal x y = (compare x y) = 0 *)
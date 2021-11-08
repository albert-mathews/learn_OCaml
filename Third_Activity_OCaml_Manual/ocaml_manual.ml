1+2*3;;
let pi = 4. *. atan 1.;;
(* personal exercise start*)
1. *. 100.;;
sin 10.;;
tan 10.;;
cos 10.;;
log 10.;;
exp 10.;;
(* personal exercise end*)
let square x = x *. x;;
square (sin pi) +. square (cos pi);;
let rec fib n =
  if n < 2 then n else fib (n - 1) + fib(n - 2);;
fib 10;;
(1 < 2) = false;;
let one = if true then 1 else 2;;
'a';;
int_of_char '\n';;
"Hello" ^ " " ^ "world";;
{|This is a quoted string, here neither \ nor " are special characters|};;
{|"\\"|}="\"\\\\\"";;
let l = ["is"; "a"; "tale"; "told"; "etc."];;
"Life" :: l;;
let rec sort lst =
  match lst with
  | [] -> []
  | head :: tail -> insert head (sort tail)
and insert elt lst =
  match lst with
    [] -> [elt]
  |head :: tail -> if elt <= head then elt :: lst else head :: insert elt tail
;;
sort l;;
sort [6; 2; 5; 3];;
  
let deriv f dx = function x -> (f(x +. dx) -. f(x)) /.  dx;;
let sin' = deriv sin 1e-6;;
sin' pi;;
let compose f g = function x -> f (g x);;
let cos2 = compose square cos;;
(* personal exercise start*)
let add_one x = x + 1;;
List.map add_one [1; 2; 3; 4; 5];;
(* personal exercise end*)
List.map (function n -> n * 2 + 1) [0; 1; 2; 3; 4];;
let rec map f l =
  match l with
  |[] -> []
  |head :: tail -> f head :: map f tail;;
(* personal exercise start*)
map (function n -> n * 2 + 1) [0; 1; 2; 3; 4];;
(* personal exercise end*)

type ratio = {num: int; denom: int};;
let add_ratio r1 r2 =
  {num = r1.num * r2.denom + r2.num * r1.denom; 
   denom = r1.denom * r2.denom};;
add_ratio {num=1; denom=3} {num=2; denom=5};;

let integer_part r =
  match r with
    {num=num; denom=denom} -> num / denom;;
integer_part {num=2;denom=4};;
integer_part {num=4;denom=2};;
let get_denom {denom=denom} = denom;;
get_denom {num=4;denom=2};;
let get_num {num=num; _} = num;;
get_num {num=4;denom=2};;
let integrer_part {num;denom} = num / denom;;
integer_part {num=4;denom=2};;
let integer_product integer ratio = { ratio with num = integer * ratio.num };;
integer_product 4 {num=4;denom=2};;


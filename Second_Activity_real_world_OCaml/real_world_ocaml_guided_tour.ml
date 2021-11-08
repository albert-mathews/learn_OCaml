(* This is an OCaml editor.
   Enter your program here and send it to the toplevel using the "Eval code"
   button or [Ctrl-e]. *)

(*
let a = 5
  
let a_tuple = (3, "three")

let (x,y) = a_tuple;;
  
x + String.length y;;
  
let distance (x1,y1) (x2,y2) =
  Float.sqrt((x1 -. x2) ** 2. +. (y1 -. y2) ** 2.) ;;

distance (0.,0.) (1.,0.);;
*)
(*

  let languages = ["OCaml";"python";"C"];;

(* let numbers = [3;"four",5];;*)

  List.length languages;;


(*List.map languages ~f:String.length;;*)

  List.map String.length languages ;;

  "french" :: languages ;;
  *)
(*

  ["a","b","c"];;

  1,2,3;;

  let mylist = [];;

  1 :: mylist;;
  2 :: mylist;;
  1 :: (2 ::(3 :: mylist));; 
(*1 :: 2 :: 3 @ 4 :: 5 :: 6;;*)
  [1;2;3] @ [4;5;6];;

  let my_fav_lang lang =
    match lang with
    |first :: the_rest -> first
    |[] -> "default"
  ;;
  my_fav_lang ["a";"b";"c"];;
  my_fav_lang [];;
  *)

(*
let rec sum l =
  match l with
  |[] -> 0
  |hd :: tl -> hd + sum tl;;

sum [1;2;3]
  
let rec cumprod l =
  match l with
  |[] -> 1
  |hd :: tl -> hd * cumprod tl;;

cumprod [1;2;3;4];;

let rec rem_seq_dup list =
  match list with
  |[] -> []
  |[hd] -> [hd]
  |first :: second :: tl ->
      let new_tl = rem_seq_dup (second :: tl) in
      if first = second then new_tl else first :: new_tl;;

rem_seq_dup [1;2;3;4;4;4;5;6;7;7;8;9;10]
;;

let z = 7 in
z + z;;

11./.14.;;
  
let a = 10 in
let b = 20 in
let c= 40 in
let d= -100 in
a+b+c+d;;



let divide x y =
  if y = 0 then None else Some (x/y);;
divide 4 2 ;;
divide 4 0;;


let listVar1 = [Some 4; Some 3; None; Some 2];;
let listVar2 = (4, 3., None, "asd");;

let divide x y =
  if y = 0. then None else Some (x/.y);; 
divide 4. 3.;;

*)

(*
  this exmaple fails because String.rsplit2 doesn't appear to be a supported function in String module

String.split_on_char '.' "asd.txt";;

let list_el_print my_list = 
  match my_list with
  |[] -> None
  |hd :: tl -> hd;;

list_el_print ["asd.txt";"asd.THn";"ASD.WES"]

  
;;
let downcase_extension filename =
  match filename with
  |"" -> filename
  |Some (base,ext) -> base ^ "." ^ String.lowercase ext;;

List.map ~f:downcase_extension ["asd.txt";"asd.THn";"ASD.WES"]

*)

(*

  type point2d = { x : float; y : float }
  ;;
  let p = {x = 3.; y = -4.};;

  let magnitude { x = x_pos; y = y_pos } =
    Float.sqrt (x_pos ** 2. +. y_pos ** 2.);;

  let magnitude_terse { x; y } = Float.sqrt(x ** 2. +. y ** 2.);;

  let distance v1 v2 = 
    magnitude_terse { x = v1.x -. v2.x; y = v1.y -. v2.y }
  ;; 
  magnitude_terse {x=1.;y=2.}
  ;;
  distance {x=1.;y=0.} {x=0.;y=0.}
  type circle_desc = { center: point2d; radius: float };;
  type rect_desc = {lwr_lft: point2d; height: float; width: float };;
  type segment_desc = {endpoint1: point2d; endpoint2: point2d };;

  type scene_element = 
    |Circle of circle_desc
    |Rect of rect_desc
    |Segment of segment_desc;;

  let is_inside_scene_element point scene_element = 
    let open Float in
    match scene_element with
    | Circle { center; radius } ->
        distance center point < radius
    | Rect { lwr_lft; height; width } -> 
        distance lwr_lft point < height && distance lwr_lft point < width
    | Segment { endpoint1; endpoint2 } -> false;;

(*let is_inside_scene point scene = 
  List.exists scene
    ~f:(fun el -> is_inside_scene_element point el);;*)

  let is_inside_circle point circle = 
    distance circle.center point < circle.radius

  ;;
  is_inside_circle{x=3.;y=7. } {center = {x=4.;y=4.}; radius = 5.0};; 

*)

(*

  let numbers = [| 1; 2; 3; 4 |];;
  numbers.(2) <- 4;;
  numbers;;

  type running_sum = 
    { mutable sum: float;
      mutable sum_sq: float; (* sum of squares *)
      mutable samples: int;
    }
  ;;

  let mean rsum = rsum.sum /. Float.of_int rsum.samples
  let stdev rsum = Float.sqrt (rsum.sum_sq /. Float.of_int rsum.samples -. (rsum.sum/. Float.of_int rsum.samples) ** 2.)
  ;;
  let create () = { sum = 0.0; sum_sq=0.; samples=0 }
  let update rsum x =
    rsum.samples <- rsum.samples + 1;
    rsum.sum     <- rsum.sum     +. x;
    rsum.sum_sq  <- rsum.sum_sq  +. x *. x
  ;;
  let rsum = create();;

  List.iter [1.;3.;-7.;5.] f:(fun x -> update rsum x);;
(*List.map update rsum [1.;3.;-7.;5.] *)
*)
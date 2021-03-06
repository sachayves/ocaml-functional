let rec sort = function
    | [] -> []
    | a :: rest -> insert a (sort rest)
  and insert element = function
    | [] -> [element]
    | a :: rest -> if element < a then element :: a :: rest
                else a :: insert element rest;;

let eq a b =
     a = b ;;

let rec remove_duplicates eq list =
  match sort list with
  | [] -> []                                                                                       
  | a :: [] -> [a]
  | a :: b :: rest -> if eq a b then remove_duplicates eq (a :: rest)
                               else a :: remove_duplicates eq (b :: rest);;

  (* examples *)
remove_duplicates (function x -> function y -> x = y) [1;2;2;2];;

remove_duplicates (function x -> function y -> x = y) [1;2;1;2;1];;

remove_duplicates eq [1;2;3;3;2;1];;

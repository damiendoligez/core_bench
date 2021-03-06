(** A module internal to [Core_bench]. Please look at {!Bench}.

   Arrays in which only some initial segment is meaningful. *)
open Core.Std

type 'a t ={
  values : 'a array;
  mutable len : int
} with fields

let create ~values ~len = { values; len }

let map_to_array t ~f = Array.init t.len ~f:(fun i -> f t.values.(i))

let _ =
  CallbagFromIter.from_array [|"h";"i"|]
  |> CallbagMap.map (fun c -> begin
       CallbagFromIter.from_array [|10;20;30|]
       |> CallbagMap.map (fun num -> c ^ Js.Int.toString num)
     end)
  |> CallbagFlatten.flatten
  |> CallbagForEach.for_each Js.log

module day2

open Types

let private RunMatch (Pair: Pairing) =
    1

let public RunDay2 =
    let pairings = GameLoader.GetPairings
    let mutable points = 0
    pairings
    |>Seq.iter(fun pairing ->
            points <- points + (RunMatch pairing)
        )
    printf $"matches resulted in {points} points"
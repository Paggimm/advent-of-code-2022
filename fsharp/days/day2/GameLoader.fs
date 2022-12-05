module GameLoader

open System.Collections.Generic
open Types

let private ReadInput =
    let filePath = $"{__SOURCE_DIRECTORY__}/input"
    System.IO.File.ReadLines filePath

let private CreatePairings (Input: IEnumerable<string>) =
    Input
    |> Seq.map(fun line ->
        {
            Opponent = line[0].ToString()
            Player = line[2].ToString()
        }
    )

let GetPairings =
    let rawFile = ReadInput
    let pairings = CreatePairings rawFile
    pairings
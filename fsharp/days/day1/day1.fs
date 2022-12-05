module day1

open System

let private Split input =
    let resultIndex = ref 0
    let mutable result: seq<seq<string>> = Seq.empty

    let tempIndex = ref 0
    let mutable tempSeq: seq<string> = Seq.empty

    input
    |> Seq.iter (fun string ->
        // with an empty string we need to save the sequence we currently have and store it in the result-sequence
        // additionally tempSeq needs to be emptied and tempIndex needs to be nulled
        if string = "" then
            result <- Seq.insertAt resultIndex.Value tempSeq result
            resultIndex.Value <- resultIndex.Value + 1
            tempSeq <- Seq.empty
            tempIndex.Value <- 0
        // new value, we store it in our tempSeq and increment tempIndex
        else
            tempSeq <- Seq.insertAt tempIndex.Value string tempSeq
            tempIndex.Value <- tempIndex.Value + 1)

    result

let private GetHighestAvailableRessources (rawFileInput: seq<string>) =
    let splitResult = Split rawFileInput
    let mutable greatestAmount = 0
    let mutable secondGreatestAmount = 0
    let mutable thirdGreatestAmount = 0

    for result in splitResult do
        // we add up every value in one sequence
        let mutable amount = 0

        result
        |> Seq.iter (fun x -> amount <- amount + Int32.Parse(x))
        // check if the next amount is in 1st, 2nd or 3rd place
        if amount > greatestAmount then
            thirdGreatestAmount <- secondGreatestAmount
            secondGreatestAmount <- greatestAmount
            greatestAmount <- amount
        elif amount > secondGreatestAmount then
            thirdGreatestAmount <- secondGreatestAmount
            secondGreatestAmount <- amount
        elif amount > thirdGreatestAmount then
            thirdGreatestAmount <- amount

    greatestAmount
    + secondGreatestAmount
    + thirdGreatestAmount

let public RunDay1 =
    let filePath = $"{__SOURCE_DIRECTORY__}/days/day1/puzzle_input"
    let readLines = System.IO.File.ReadLines(filePath)
    let result = GetHighestAvailableRessources readLines

    printf $"greatest amount of calories amounts to: {result}"

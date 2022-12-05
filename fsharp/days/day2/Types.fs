module Types

let DrawPoints = 3
let LosePoints = 0
let WinPoints = 6

type Pairing = {
    Opponent: string
    Player: string
}

/// BaseType for a Rock-Paper-Scissor Option
type RPSOption = {
    Points: int
    OpponentID: string
    PlayerID: string
}

let Rock: RPSOption = {
    Points = 1
    OpponentID = "A"
    PlayerID = "X"
}

let Paper: RPSOption = {
    Points = 2
    OpponentID = "B"
    PlayerID = "Y"
}

let Scissor: RPSOption = {
    Points = 3
    OpponentID = "C"
    PlayerID = "Z"
}
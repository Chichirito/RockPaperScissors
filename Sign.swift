//
//  Sign.swift
//  RPS
//
//  Created by Михаил Селиванов on 12.11.2021.
//

import Foundation
import GameplayKit

enum Sign{
    case rock
    case paper
    case scissors
    
    var emoji : String{
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        }
    }
    
    func compareSigns(signOfOpponent: Sign) -> GameState{
        if self == .rock && signOfOpponent == .paper{
            return .Win
        } else if self == .rock && signOfOpponent == .scissors{
            return .Lose
        } else if self == .rock && signOfOpponent == .rock{
            return .Draw
        } else if self == .paper && signOfOpponent == .scissors{
            return .Win
        } else if self == .paper && signOfOpponent == .rock{
            return .Lose
        } else if self == .paper && signOfOpponent == .paper{
            return .Draw
        } else if self == .scissors && signOfOpponent == .rock{
            return .Win
        } else if self == .scissors && signOfOpponent == .paper{
            return .Lose
        } else if self == .scissors && signOfOpponent == .scissors{
            return .Draw
        }
        return .Draw
    }
}

let randomChoise = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign{
    let sign = randomChoise.nextInt()
    if sign == 0{
        return .rock
    } else if sign == 1{
        return .paper
    } else {
        return .scissors
    }
}

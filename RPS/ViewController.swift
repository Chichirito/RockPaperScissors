//
//  ViewController.swift
//  RPS
//
//  Created by Михаил Селиванов on 12.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appSing: UILabel!
    @IBOutlet weak var statusOfGame: UILabel!
    @IBOutlet weak var signOfPlayer: UIStackView!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var buttonOfRockChoice: UIButton!
    @IBOutlet weak var buttonOfPaperChoice: UIButton!
    @IBOutlet weak var buttonOfScissorsChoice: UIButton!
    @IBOutlet weak var outcomeOfGame: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func ButtonOfRockSign(_ sender: UIButton) {
        var choiceOfApp : Sign
        var stateOfGame : GameState
        outcomeOfGame.isHidden = false
        buttonOfPaperChoice.isHidden = true
        buttonOfScissorsChoice.isHidden = true
        buttonOfRockChoice.frame.origin = CGPoint(x: 10, y: 10)
        playAgainButton.isHidden = false
        statusOfGame.text = "VS"
        choiceOfApp = randomSign()
        appSing.text = choiceOfApp.emoji
        stateOfGame = choiceOfApp.compareSigns(signOfOpponent: .rock)
        switch stateOfGame {
        case .Win:
            outcomeOfGame.text = "You WIN"
        case .Lose:
            outcomeOfGame.text = "You LOSE"
        case .Draw:
            outcomeOfGame.text = "Draw"
        }
    }
    
    @IBAction func buttonOfPaperSign(_ sender: UIButton) {
        var choiceOfApp : Sign
        var stateOfGame : GameState
        outcomeOfGame.isHidden = false
        buttonOfRockChoice.isHidden = true
        buttonOfScissorsChoice.isHidden = true
        playAgainButton.isHidden = false
        //buttonOfPaperChoice.frame.origin = CGPoint(x: 0, y: 0)
        statusOfGame.text = "VS"
        choiceOfApp = randomSign()
        appSing.text = choiceOfApp.emoji
        stateOfGame = choiceOfApp.compareSigns(signOfOpponent: .paper)
        switch stateOfGame {
        case .Win:
            outcomeOfGame.text = "You WIN"
        case .Lose:
            outcomeOfGame.text = "You LOSE"
        case .Draw:
            outcomeOfGame.text = "Draw"
        }
    }
    
    @IBAction func buttonOfScissorsSign(_ sender: UIButton) {
        var choiceOfApp : Sign
        var stateOfGame : GameState
        outcomeOfGame.isHidden = false
        buttonOfRockChoice.isHidden = true
        buttonOfPaperChoice.isHidden = true
        buttonOfScissorsChoice.frame.origin = CGPoint(x: 10, y: 10)
        playAgainButton.isHidden = false
        statusOfGame.text = "VS"
        choiceOfApp = randomSign()
        appSing.text = choiceOfApp.emoji
        stateOfGame = choiceOfApp.compareSigns(signOfOpponent: .scissors)
        switch stateOfGame {
        case .Win:
            outcomeOfGame.text = "You WIN"
        case .Lose:
            outcomeOfGame.text = "You LOSE"
        case .Draw:
            outcomeOfGame.text = "Draw"
        }
    }
    
    @IBAction func buttonOfPlayAgain(_ sender: UIButton) {
        playAgainButton.isHidden = true
        buttonOfPaperChoice.isHidden = false
        buttonOfRockChoice.isHidden = false
        buttonOfScissorsChoice.isHidden = false
        statusOfGame.text = "Rock, Paper, Scissors?"
        outcomeOfGame.isHidden = true
        appSing.text = "🤖"
        buttonOfRockChoice.frame.origin = CGPoint(x: 0, y: 0)
        buttonOfScissorsChoice.frame.origin = CGPoint(x: 0, y: 0)
        viewDidLoad()
    }
    
}


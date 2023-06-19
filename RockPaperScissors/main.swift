//
//  main.swift
//  RockPaperScissors
//
//  Created by Ecem Akçay on 19.06.2023.
//

import Foundation


enum Choices: String {
    case rock = "👊"
    case paper = "🫱"
    case scissors = "✌️"
}

var mySet: Set<Choices> = [.scissors, .paper, .rock]
print("Choise :\n✌️ = 1 \n🫱 = 2 \n👊 = 3 ")
var input = readLine(strippingNewline: true)
var rd = mySet.randomElement()

var game = Game()

if let input = input {
    switch input {
        case "1":
            game.result(rd: rd!, input: input)
            break
        
        case "2":
            game.result(rd: rd!, input: input)
            break
        
        case "3":
            game.result(rd: rd!, input: input)
            break
        
        default:
            print("Invalid value")
    }
}

class Game{
    
    func result(rd : Choices, input: String){
        if rd == .rock && input == "1" || rd == .paper && input == "3" || rd == .scissors && input == "2" {
            
            print("Computer: \(rd.rawValue) \nYou lose!!")
            
        }else if rd == .rock && input == "3" || rd == .paper && input == "2" || rd == .scissors && input == "1" {
            
            print("Computer: \(rd.rawValue) \nScoreless")
            
        }else if rd == .rock && input == "2" || rd == .paper && input == "1" || rd == .scissors && input == "3" {
            
            print("Computer: \(rd.rawValue) \nYou win!!")
        }
    }
        
}

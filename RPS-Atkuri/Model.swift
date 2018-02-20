//
//  Model.swift
//  RPS-Atkuri
//
//  Created by Atkuri,Ashok on 2/19/18.
//  Copyright © 2018 Atkuri,Ashok. All rights reserved.
//

import Foundation

class RPSModel
{
    enum Choice {
        case None,Rock,Paper,Scissor,Lizard,Spock
    }
    
    private var _player1Name:String = ""
    private var _player2Name:String = ""
    private var _player1choice:Choice = .None
    private var _player2choice:Choice = .None
    private var _player1wincount:Int = 0
    private var _player2wincount:Int = 0
    
    var player1Name:String{
        get{
            return _player1Name
        }
        set{
            _player1Name = newValue
        }
    }
    var player2Name:String{
        get{
            return _player2Name
        }
        set{
            _player2Name = newValue
        }
    }
    
    var player1choice:Choice{
        get{
            return _player1choice
        }
        set{
            _player1choice=newValue
        }
    }
    var player2choice:Choice{
        get{
            return _player2choice
        }
        set{
            _player2choice=newValue
        }
    }
    var player1wincount:Int{
        get{
            return _player1wincount
        }
        set{
            _player1wincount=newValue
        }
    }
    var player2wincount:Int{
        get{
            return _player2wincount
        }
        set{
            _player2wincount=newValue
        }
    }
    
    static var SharedRPSModel:RPSModel{
        let rpsmodel = RPSModel()
        return rpsmodel
    }
    
    private init() {
        
    }
    
    func reset() {
        player1choice = .None
        player2choice = .None
    }
    
    func haveResult() -> Bool {
        return player1choice != .None && player2choice != .None
    }
    
    func choosePlayer1(pick:Choice) {
        player1choice = pick
    }
    func choosePlayer2(pick:Choice) {
        player2choice = pick
    }
    
    func winner() -> String{
        switch player1choice {
        case .Rock:
            if(player2choice == .Scissor || player2choice == .Lizard || player2choice == .None){
                player1wincount += 1
                return "player1 wins"
            }else if(player2choice == .Paper || player2choice == .None){
                player2wincount += 1
                return "player2 wins"
            }else {
                return "It's a tie"
            }
            
        case .Paper:
            if(player2choice == .Spock || player2choice == .Rock || player2choice == .None){
                player1wincount += 1
                return "player1 wins"
            }else if(player2choice == .Scissor || player2choice == .Lizard){
                player2wincount += 1
                return "player2 wins"
            }else {
                return "It's a tie"
            }
        case .Scissor:
            if(player2choice == .Paper || player2choice == .Lizard || player2choice == .None){
                player1wincount += 1
                return "player1 wins"
            }else if(player2choice == .Rock || player2choice == .Spock){
                player2wincount += 1
                return "player2 wins"
            }else {
                return "It's a tie"
            }
        case .None:
            if(player2choice == .Scissor || player2choice == .Lizard || player2choice == .Scissor || player2choice == .Lizard){
                return "player2 wins"
            }else {
                return "It's a tie"
            }
            
        case .Lizard:
            if(player2choice == .Spock || player2choice == .Paper || player2choice == .None){
                player1wincount += 1
                return "player1 wins"
            }else if(player2choice == .Scissor || player2choice == .Rock){
                player2wincount += 1
                return "player2 wins"
            }else {
                return "It's a tie"
            }
            
        case .Spock:
            if(player2choice == .Rock || player2choice == .Scissor || player2choice == .None){
                player1wincount += 1
                return "player1 wins"
            }else if(player2choice == .Paper || player2choice == .Lizard){
                player2wincount += 1
                return "player2 wins"
            }else {
                return "It's a tie"
            }
        }
    }
    
}

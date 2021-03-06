//
//  SecondViewController.swift
//  RPS-Atkuri
//
//  Created by Atkuri,Ashok on 2/19/18.
//  Copyright © 2018 Atkuri,Ashok. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var LBLPlayerResponse: UILabel!
    @IBOutlet weak var LBLResult: UILabel!
    @IBOutlet weak var LBLPlayer1Wincount: UILabel!
    @IBOutlet weak var LBLPlayer2Wincount: UILabel!
    @IBOutlet weak var LBLPlayer1NameTag: UILabel!
    @IBOutlet weak var LBLPlayer2NameTag: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if (AppDelegate.sharedData.player1Name != "") {
           LBLPlayer1NameTag.text = AppDelegate.sharedData.player1Name + " WinCount"
        }
        
        if (AppDelegate.sharedData.player2Name != "") {
            LBLPlayer2NameTag.text = AppDelegate.sharedData.player2Name + " WinCount"
        }
        
        if AppDelegate.sharedData.haveResult()
        {
            LBLResult.text = AppDelegate.sharedData.winner()
            LBLPlayerResponse.text = "Check Out the result Below"
        }
        else
        {
            if AppDelegate.sharedData.player1choice == .None
            {
                LBLPlayerResponse.text = "No Selection from player 1"
            }
            if AppDelegate.sharedData.player2choice == .None
            {
                LBLPlayerResponse.text = "No selection from player 2"
            }
            if AppDelegate.sharedData.player1choice == .None && AppDelegate.sharedData.player2choice == .None
            {
                LBLPlayerResponse.text = "No response from both the players"
                LBLResult.text = "No response, Noresult"
            }
        }
        LBLPlayer1Wincount.text = "\(AppDelegate.sharedData.player1wincount) times"
        LBLPlayer2Wincount.text = "\(AppDelegate.sharedData.player2wincount) times"
        
    }


    @IBAction func BtnReset(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer1(pick: .None)
        AppDelegate.sharedData.choosePlayer2(pick: .None)
        AppDelegate.sharedData.player1wincount = 0
        AppDelegate.sharedData.player2wincount = 0
        LBLPlayer1Wincount.text = "\(AppDelegate.sharedData.player1wincount) times"
        LBLPlayer2Wincount.text = "\(AppDelegate.sharedData.player2wincount) times"
    }
    
    @IBOutlet weak var BtnPlayAgain: UIButton!
    @IBAction func BtnPlayAgain(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer1(pick: .None)
        AppDelegate.sharedData.choosePlayer2(pick: .None)
        self.tabBarController?.selectedIndex = 0
    }
    
}


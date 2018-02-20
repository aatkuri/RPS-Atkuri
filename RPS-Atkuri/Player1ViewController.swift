//
//  FirstViewController.swift
//  RPS-Atkuri
//
//  Created by Atkuri,Ashok on 2/19/18.
//  Copyright © 2018 Atkuri,Ashok. All rights reserved.
//

import UIKit

class Player1ViewController: UIViewController {

    @IBOutlet weak var TFPlayer1Name: UITextField!
    @IBOutlet weak var BTNSubmit: UIButton!
    @IBOutlet weak var LBLStatusMessage: UILabel!
    @IBOutlet weak var BTNRock: UIButton!
    @IBOutlet weak var BTNPaper: UIButton!
    @IBOutlet weak var BTNScissor: UIButton!
    @IBOutlet weak var BTNLizard: UIButton!
    @IBOutlet weak var BTNSpock: UIButton!
    @IBOutlet weak var TBIPlayer1: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if AppDelegate.sharedData.player1choice != .None
        {
            BTNRock.isEnabled = false
            BTNPaper.isEnabled = false
            BTNScissor.isEnabled = false
            BTNLizard.isEnabled = false
            BTNSpock.isEnabled = false
            LBLStatusMessage.text = "selection already made"
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.sharedData.player1choice != .None
        {
            BTNRock.isEnabled = false
            BTNPaper.isEnabled = false
            BTNScissor.isEnabled = false
            BTNLizard.isEnabled = false
            BTNSpock.isEnabled = false
            LBLStatusMessage.text = "selection already made"
        }
        else
        {
            BTNRock.isEnabled = true
            BTNPaper.isEnabled = true
            BTNScissor.isEnabled = true
            BTNLizard.isEnabled = true
            BTNSpock.isEnabled = true
            LBLStatusMessage.text = "Make a selection"
        }
    }

    @IBAction func BTNSubmitOnclick(_ sender: UIButton) {
        let Name:String = TFPlayer1Name.text!
        if Name != ""
        {
            TFPlayer1Name.isEnabled = false
            AppDelegate.sharedData.player1Name = Name
            TBIPlayer1.title = Name
        }
    }
    
    @IBAction func BTNRockOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer1(pick:.Rock)
        LBLStatusMessage.text="selection has been made"
    }
    
    @IBAction func BTNPaperOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer1(pick:.Paper)
        LBLStatusMessage.text="selection has been made"
    }
    
    @IBAction func BTNScissorOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer1(pick:.Scissor)
        LBLStatusMessage.text="selection has been made"
    }
    
    @IBAction func BTNLizardOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer1(pick:.Lizard)
        LBLStatusMessage.text="selection has been made"
    }
    
    @IBAction func BTNSpockOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer1(pick:.Spock)
        LBLStatusMessage.text="selection has been made"
    }
}


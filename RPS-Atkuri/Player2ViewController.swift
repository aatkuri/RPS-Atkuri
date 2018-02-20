//
//  Player2ViewController.swift
//  RPS-Atkuri
//
//  Created by Atkuri,Ashok on 2/19/18.
//  Copyright © 2018 Atkuri,Ashok. All rights reserved.
//

import UIKit

class Player2ViewController: UIViewController {

    @IBOutlet weak var TFPlayer2Name: UITextField!
    @IBOutlet weak var BTNSubmit: UIButton!
    @IBOutlet weak var LBLMessageStatus: UILabel!
    @IBOutlet weak var BTNRock: UIButton!
    @IBOutlet weak var BTNPaper: UIButton!
    @IBOutlet weak var BTNScissor: UIButton!
    @IBOutlet weak var BTNLizard: UIButton!
    @IBOutlet weak var BTNSpock: UIButton!
    @IBOutlet weak var TBIPlayer2: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if AppDelegate.sharedData.player2choice != .None
        {
            BTNRock.isEnabled = false
            BTNPaper.isEnabled = false
            BTNScissor.isEnabled = false
            BTNLizard.isEnabled = false
            BTNSpock.isEnabled = false
            LBLMessageStatus.text = "Selection is already made"
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.sharedData.player2choice != .None
        {
            BTNRock.isEnabled = false
            BTNPaper.isEnabled = false
            BTNScissor.isEnabled = false
            BTNLizard.isEnabled = false
            BTNSpock.isEnabled = false
            LBLMessageStatus.text = "Selection is already made"
        }
        else
        {
            BTNRock.isEnabled = true
            BTNPaper.isEnabled = true
            BTNScissor.isEnabled = true
            BTNLizard.isEnabled = true
            BTNSpock.isEnabled = true
            LBLMessageStatus.text = "Make a selection"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func BTNSubmitOnclick(_ sender: UIButton) {
        let Name:String = TFPlayer2Name.text!
        if Name != ""
        {
            TFPlayer2Name.isEnabled = false
            AppDelegate.sharedData.player2Name = Name
            TBIPlayer2.title = Name
        }
    }
    
    @IBAction func BTNRockOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer2(pick:.Rock)
        LBLMessageStatus.text="selection has been made: Rock"
    }
    
    @IBAction func BTNPaperOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer2(pick:.Paper)
        LBLMessageStatus.text="selection has been made: Paper"
    }
    
    @IBAction func BTNScissorOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer2(pick:.Scissor)
        LBLMessageStatus.text="selection has been made: Scissor"
    }
    
    @IBAction func BTNLizardOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer2(pick:.Lizard)
        LBLMessageStatus.text="selection has been made: Lizard"
    }
    
    @IBAction func BTNSpockOnclick(_ sender: UIButton) {
        AppDelegate.sharedData.choosePlayer2(pick:.Spock)
        LBLMessageStatus.text="selection has been made: Spock"
    }

}

//
//  ViewController.swift
//  Skate-Or-Dice
//
//  Created by Michael Granberry II on 2/11/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    var dice = Dice()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder() // To get shake gesture
        rollButton.layer.cornerRadius = 10
        diceImageView1.layer.cornerRadius = 10
        diceImageView2.layer.cornerRadius = 10
        diceImageView3.layer.cornerRadius = 10
        diceImageView4.layer.cornerRadius = 10
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        dice.rollDice()
        diceImageView1.image = dice.diceImage[0]
        diceImageView2.image = dice.diceImage[1]
        diceImageView3.image = dice.diceImage[2]
        diceImageView4.image = dice.diceImage[3]
    }
    
    // We are willing to become first responder to get shake motion
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            print("Shake")
            dice.rollDice()
            diceImageView1.image = dice.diceImage[0]
            diceImageView2.image = dice.diceImage[1]
            diceImageView3.image = dice.diceImage[2]
            diceImageView4.image = dice.diceImage[3]
        }
    }
}


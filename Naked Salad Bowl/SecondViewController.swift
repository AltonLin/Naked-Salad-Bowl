//
//  SecondViewController.swift
//  Naked Salad Bowl
//
//  Created by Alton on 8/21/15.
//  Copyright (c) 2015 Alton Lin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    @IBOutlet weak var wordOne: UITextField!
    @IBOutlet weak var wordTwo: UITextField!
    @IBOutlet weak var wordThree: UITextField!
    @IBOutlet weak var okButton: UIButton!
    @IBOutlet weak var cardNumberLabel: UILabel!
    var playerNumber:Int!
    var cardNumber:Int = 1
    var playerWords:[[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func okButtonPressed(sender: UIButton) {
        if cardNumber < playerNumber {
            if wordOne.text != "" && wordTwo.text != "" && wordThree.text != "" {
                var card:[String] = [wordOne.text, wordTwo.text, wordThree.text]
                playerWords.append(card)
                wordOne.text = nil
                wordTwo.text = nil
                wordThree.text = nil
                cardNumber++
                cardNumberLabel.text = String(cardNumber)
                if cardNumber == playerNumber {
                    okButton.setTitle("Play", forState: UIControlState.Normal)
                }
            }
        }
    }
}


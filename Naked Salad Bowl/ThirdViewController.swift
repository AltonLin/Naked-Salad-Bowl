//
//  ThirdViewController.swift
//  Naked Salad Bowl
//
//  Created by Alton on 8/21/15.
//  Copyright (c) 2015 Alton Lin. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController{
    @IBOutlet weak var firstWord: UILabel!
    @IBOutlet weak var secondWord: UILabel!
    @IBOutlet weak var thirdWord: UILabel!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var playScreen: UIView!
    @IBOutlet weak var startScreen: UIView!
    @IBOutlet var completeView: UIView!
    @IBOutlet weak var succeedButton: UIButton!
    @IBOutlet weak var failButton: UIButton!
    
    var playerWords:[[String]] = []
    var wordHolder:[[String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordHolder = sorted(playerWords) {_, _ in arc4random() % 2 == 0}
        var words:[String] = wordHolder.first!
        firstWord.text = words[0]
        secondWord.text = words[1]
        thirdWord.text = words[2]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func succeed(sender: UIButton) {
        wordHolder.removeAtIndex(0)
        var words:[String] = wordHolder.first!
        firstWord.text = words[0]
        secondWord.text = words[1]
        thirdWord.text = words[2]
    }
    
    
    @IBAction func startRound(sender: UIButton) {
        completeView.bringSubviewToFront(playScreen)
    }
    
}


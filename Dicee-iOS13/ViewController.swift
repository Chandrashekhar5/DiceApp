//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }
    
//    var diceOneValue = 0
//    var diceTwoValue = 0
    
    @IBOutlet weak var subLogo: UILabel!
    @IBOutlet weak var priyaPic: UIImageView!
    @IBOutlet weak var textNote: UILabel!
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Roll button got tapped")
        let diceOneValue = Int.random(in: 0...5)
        let diceTwoValue = Int.random(in: 0...5)
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        diceImageView1.image = diceArray[diceOneValue]
        diceImageView2.image = diceArray[diceTwoValue]
        var result = diceOneValue + diceTwoValue
        if result == 4 {
            priyaPic.alpha = 1
            textNote.alpha = 1
        } else { priyaPic.alpha = 0
            textNote.alpha = 0 }
    }
    
}


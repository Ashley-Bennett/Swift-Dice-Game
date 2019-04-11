//
//  ViewController.swift
//  DiceGame
//
//  Created by Code Nation 20 on 09/04/2019.
//  Copyright © 2019 Code Nation 20. All rights reserved.
//

import UIKit





class FirstViewController: UIViewController {
    
    
    
//    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var diceImage: UIImageView!
//    @IBOutlet weak var totalScore: UILabel!
    @IBOutlet weak var totalScore: UILabel!
    //    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var message: UILabel!
    
    var dice = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    
    var random: Int = 0
    
    var total: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
//    @IBAction func rollButton(_ sender: Any) {
    @IBAction func rollButton(_ sender: Any) {
    
        message.text = " "
        random = Int.random(in: 0...5)
        diceImage.image = dice[random]
        total += random + 1
        totalScore.text = "\(total)"
        print(random)
        print(total)
        rollLogic()
    }
    
    func rollLogic(){
        if (random == 0){
            message.text = "You lost"
            total = 0
            totalScore.text = "\(total)"
        } else if (total >= 20){
            message.text = "You won"
            total = 0
        }
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        message.text = " "
        random = Int.random(in: 0...5)
        diceImage.image = dice[random]
        total += random + 1
        totalScore.text = "\(total)"
        print(random)
        print(total)
        rollLogic()
    }
    
    
    
    //2player
    @IBAction func roll1(_ sender: Any) {
        print("roll1")
    }
    
}


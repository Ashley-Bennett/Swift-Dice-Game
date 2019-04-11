//
//  SecondViewController.swift
//  dice
//
//  Created by Code Nation 20 on 10/04/2019.
//  Copyright © 2019 Code Nation 20. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var die1: UIImageView!
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var die2: UIImageView!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var result: UILabel!
    var total1 = 0
    var total2 = 0
    
    var random = 0
    
    var dice = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    
    var turn = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func roll1(_ sender: Any) {
        if (turn % 2 == 0) {
            print(turn)
            result.text = " "
            turn = turn + 1
            random = Int.random(in: 0...5)
            die1.image = dice[random]
            total1 += random + 1
            score1.text = "\(total1)"
            print(random)
            print(total1)
            rollLogic1()
            print(turn)
        } else {
            result.text = "Player 2's Turn"
        }
    }
    
    func rollLogic1() {
        if (random == 0){
            result.text = "Your score reset"
            total1 = 0
            score1.text = "\(total1)"
        } else if (total1 >= 20){
            result.text = "Player 1 wins"
            total1 = 0
            total2 = 0
            turn = 0
        } else if (random == 5){
            result.text = "Player 2's score reset"
            total2 = 0
            score2.text = "\(total2)"
        }
    }
    
    @IBAction func roll2(_ sender: Any) {
        if (turn % 2 != 0) {
            result.text = " "
            turn = turn + 1
            random = Int.random(in: 0...5)
            die2.image = dice[random]
            total2 += random + 1
            score2.text = "\(total2)"
            print(random)
            print(total2)
            rollLogic2()
        } else {
            result.text = "Player 1's Turn"
        }
        
    }
    
    func rollLogic2() {
        if (random == 0){
            result.text = "Your score reset"
            total2 = 0
            score2.text = "\(total2)"
        } else if (total2 >= 20){
            result.text = "Player 2 wins"
            total2 = 0
            turn = 0
            total1 = 0
        } else if (random == 5){
            result.text = "Player 1's score reset"
            total1 = 0
            score1.text = "\(total1)"
        }
    }
    
}


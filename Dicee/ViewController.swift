//
//  ViewController.swift
//  Dicee
//
//  Created by Owner on 2018-09-17.
//  Copyright © 2018 Safinali Maredia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    //var poolOfDiceNumbers : [Int] = [1,2,3,4,5,6]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        showRandomDiceImage()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        showRandomDiceImage()
        
    }
    
    func showRandomDiceImage(){
        diceImageView1.image = UIImage(named: "dice\(Int(arc4random_uniform(6)) + 1)")
        diceImageView2.image = UIImage(named: "dice\(Int(arc4random_uniform(6)) + 1)")
    }
    
    //Function to check if the user has shaken the phone
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        showRandomDiceImage()
    }
    
}


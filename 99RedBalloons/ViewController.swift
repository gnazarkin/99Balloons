//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Gleb Nazarkin on 2014-12-12.
//  Copyright (c) 2014 Addo Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balloonImage: UIImageView!
    @IBOutlet weak var balloonLabel: UILabel!
    
    var myBalloons:[Balloon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for var i = 0; i < 99; i++ {
            var balloon = Balloon()
            balloon.amount = i
    
            let randomNumber = Int(arc4random_uniform(UInt32(5)))
            
            if randomNumber == 0 {
                balloon.image = UIImage(named: "BerlinTVTower.jpg")
            }
            else if randomNumber == 1 {
                balloon.image = UIImage(named: "RedBalloon1.jpg")
            }
            else if randomNumber == 2 {
                balloon.image = UIImage(named: "RedBalloon2.jpg")
            }
            else if randomNumber == 3 {
                balloon.image = UIImage(named: "RedBalloon3.jpg")
            }
            else {
                balloon.image = UIImage(named: "RedBalloon4.jpg")
            }
            
            self.myBalloons.append(balloon)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func nextPressed(sender: AnyObject) {
        let randomNumber = Int(arc4random_uniform(UInt32(99)))
        var balloon = myBalloons[randomNumber]
        balloonImage.image = balloon.image
        balloonLabel.text = "\(balloon.amount) Balloons"
    }
    

}


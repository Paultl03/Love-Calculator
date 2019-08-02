//
//  ViewController.swift
//  Love Calculator
//
//  Created by Paul Logan III on 8/1/19.
//  Copyright © 2019 Paul Logan III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yourNameTextField: UITextField!
    
    @IBOutlet weak var yourCrushNameTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func loveCalculatorButton(_ sender: Any) {
        calculateLove(yourName: yourNameTextField.text!, yourCrushName: yourCrushNameTextField.text!)
        
    }
    func calculateLove(yourName: String, yourCrushName: String) -> Int{
        
        let loveScore = arc4random_uniform(101)
        
        if loveScore >= 85 {
            print("You and your crush have a high compatibility. Start planning for the wedding.")
        }
        
        else if loveScore < 85 && loveScore > 70 {
            
          print("Your chances of getting together are pretty good. Ask them out on a date.")
        }
        else if loveScore < 70 && loveScore > 49 {
                
                print ("Doesn't look too good. But hey, it doesn't hurt to give it a try. Just don't be a creep about it.")
            }
        
        else {
            print("Yea, I think you should type in another name. This doesn't look good at all. ")
            
        }
        
        return 0
    
    }
    
    
}


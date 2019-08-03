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
    func calculateLove(yourName: String, yourCrushName: String) -> String{
        
        let loveScore = Int(arc4random_uniform(101))
        
        if loveScore >= 85 {
            return ("\(yourName),you and your crush \(yourCrushName) have a high compatibility of \(loveScore)%. Start planning for the wedding now!")
        }
        
        else if loveScore < 85 && loveScore > 70 {
            
          return ("\(yourName),you and your crush \(yourCrushName) have a   \(loveScore)% chance of being a good match. Ask them out on a date.")
            }
        else if loveScore < 70 && loveScore > 49 {
                
                return("Doesn't look too good \(yourName). But hey, it doesn't hurt to give it a try. Just don't be a creep about it.")
            }
        
        else {
            return (" \(yourName), I think you should type in another name. This doesn't look good at all. ")
            
        }
        
        
      
    }
    
  
    
}


//
//  ViewController.swift
//  MindReader
//
//  Created by Raleigh Green on 5/26/17.
//  Copyright © 2017 Raleigh Green. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    
    var questionNo: Int = 2
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerTextField.text = ""
        answerTextField.isHidden = true
    }

    @IBAction func nextButtonPressed(_ sender: UIButton) {
        // Think of a number                            question == 1
        // Multiply it with 5                           question == 2
        // Add 5                                        question == 3
        // Multiply it with 2                           question == 4
        // Add 2                                        question == 5
        // Asking the total                             question == 6
        // users provide the total, computer guesses    question == 7
        // after the complete if = else if structure, we need to increment question by 1
        
        if questionNo == 1 {
            questionLabel.text = "Think of a number"
            answerTextField.text = ""
            answerTextField.isHidden = true
            sender.setTitle("Next", for: .normal)
            
        } else if questionNo == 2 {
            
            questionLabel.text = "Multiply it by 5"
            
        } else if questionNo == 3 {
            
            questionLabel.text = "Now add 5 to the total"
            
        } else if questionNo == 4 {
            
            questionLabel.text = "Multiply the answer by 2"
            
        } else if questionNo == 5 {
            
            questionLabel.text = "Now add 2 to the total"
            
        } else if questionNo == 6 {
            
            questionLabel.text = "What is the total?"
            answerTextField.isHidden = false
            
        } else if questionNo == 7 {
            
            // Check if the user has provided the inpur, tell the user
            // what he/she thought. If user hasn't provided input, provide an alert.
            
            if answerTextField.text != "" {
                
                let inputNumber: Int = Int(answerTextField.text!)!
                let answer = (((inputNumber - 2) / 2) - 5) / 5
                questionLabel.text = "you thought of : \(answer)"
                sender.setTitle("Play again?", for: .normal)
                
            } else {
                
                let alert = UIAlertController(title: "Ooops", message: "Please provide total", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
                return
                
            }
            
            self.view.endEditing(true)
        }
        
        questionNo += 1
        
        if questionNo > 7 {
            
            questionNo = 1
            
        }
    }
}


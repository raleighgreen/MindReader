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
        print("Button Presse")
    }
   

}


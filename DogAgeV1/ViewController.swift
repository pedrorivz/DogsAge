//
//  ViewController.swift
//  DogAge
//
//  Created by Pedro Henrique da Silva Santos on 04/02/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dogAge: UITextField!
    @IBOutlet weak var resultText: UITextView!
    
    @IBAction func discoverAge(_ sender: Any) {
        let age = Int(dogAge.text!)! * 7
        let plainAge = String(age)
        self.resultText.text = "Your human dog's age is: " + plainAge
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}


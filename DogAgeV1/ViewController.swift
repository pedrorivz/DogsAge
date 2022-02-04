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
        guard let dogAgeString = dogAge.text,
              let ageInt = Int(dogAgeString)
        else {
            return
        }
        
        let age = String(ageInt * 7)
        self.resultText.text = "Your human dog's age is: \(age)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dogAge.delegate = self
    }


}

extension ViewController:UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].map{String($0)}
        
        if !numbers.contains(string) && string != "" {
            return false
        }
        return true
    }
}


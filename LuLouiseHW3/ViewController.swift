//
//  ViewController.swift
//  LuLouiseHW3
//
//  Created by Student on 2/9/20.
//  Copyright © 2020 Louise Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //properties
    @IBOutlet weak var mainTextLabel: UILabel!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var catButton: UIButton!
    @IBOutlet weak var dogButton: UIButton!
    @IBOutlet weak var responseTextLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    //method
    
    @IBAction func tappedCat(_ sender: Any) {

        if userTextField.text != "" && userTextField.text != nil{
           responseTextLabel.text=userTextField.text!+", you made the purrfect choice!"
        }
        else{
            responseTextLabel.text="You made the purrfect choice!"
        }
    }
    
    
    @IBAction func tappedDog(_ sender: Any) {
       if userTextField.text != "" && userTextField.text != nil{
            responseTextLabel.text=userTextField.text!+", I woof you!"
        }
        else{
            responseTextLabel.text="I woof you!"
        }
    }
    
    @IBAction func backgroundIsTapped(_ sender: UITapGestureRecognizer) {
        userTextField.resignFirstResponder()
    }
    
    @IBAction func textInputting(_ sender: Any) {
        userTextField.becomeFirstResponder()
    }
    
    @IBAction func doneIsPressed(_ sender: Any) {
        userTextField.resignFirstResponder()
    }
    
    @IBAction func resetIsPressed(_ sender: Any) {
        responseTextLabel.text=""
        userTextField.text=""
    }
//
//    @IBAction func backgroundIsTapped(_ sender: Any) {
//        userTextField.resignFirstResponder()
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.becomeFirstResponder()
        userTextField.text=""
        responseTextLabel.text = " "
    mainTextLabel.accessibilityIdentifier=HW3AccessibilityIdentifiers.questionLabel
    userTextField.accessibilityIdentifier=HW3AccessibilityIdentifiers.answerTextField
    catButton.accessibilityIdentifier=HW3AccessibilityIdentifiers.optionButton1
    dogButton.accessibilityIdentifier=HW3AccessibilityIdentifiers.optionButton2
    responseTextLabel.accessibilityIdentifier=HW3AccessibilityIdentifiers.messageLabel
    resetButton.accessibilityIdentifier=HW3AccessibilityIdentifiers.resetButton
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)

        
    }
    @objc func dismissKeyboard() {
        userTextField.resignFirstResponder()
    }



    
}




//
//  ViewController.swift
//  Food Tracker
//
//  Created by Tegan Broderick on 1/14/20.
//  Copyright © 2020 Tegan Broderick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //By adopting the UITextFieldDelegate protocol, you tell the compiler that the ViewController class can act as a valid text field delegate. This means you can implement the protocol’s methods to handle text input, and you can assign instances of the ViewController class as the delegate of the text field.
    
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    //! means the type is an implicitly unwrapped optional
    //When you access an implicitly unwrapped optional, the system assumes
    //it has a valid value and automatically unwraps it for you.
    //Note that this causes the app to terminate if the variable’s value has
    //not yet been set.
    //When a view controller is loaded from a storyboard, the system instantiates the view hierarchy and assigns the appropriate values to all the view controller’s outlets. By the time the view controller’s viewDidLoad() method is called, the system has assigned valid values to all of the controller’s outlets, and you can safely access their contents. //
    
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
        //This method returns a Boolean value that indicates whether the system should process the press of the Return key. In this case, you always want to respond to the user pressing the Return key, so just return true.
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func setDefaultTextLabel(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    //sender is the object responsible for triggering the action
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        
        //The self refers to the ViewController class, because it’s referenced inside the scope of the ViewController class definition.
        //When a ViewController instance is loaded, it sets itself as the delegate of its nameTextField property.
        
    }
    
    


}


//
//  ViewController.swift
//  Food Tracker
//
//  Created by Tegan Broderick on 1/14/20.
//  Copyright © 2020 Tegan Broderick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Mark: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    //! means the type is an implicitly unwrapped optional
    //When you access an implicitly unwrapped optional, the system assumes
    //it has a valid value and automatically unwraps it for you.
    //Note that this causes the app to terminate if the variable’s value has
    //not yet been set.
    //When a view controller is loaded from a storyboard, the system instantiates the view hierarchy and assigns the appropriate values to all the view controller’s outlets. By the time the view controller’s viewDidLoad() method is called, the system has assigned valid values to all of the controller’s outlets, and you can safely access their contents. //
    
    //Mark: Actions
    @IBAction func setDefaultTextLabel(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    //sender is the object responsible for triggering the action
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


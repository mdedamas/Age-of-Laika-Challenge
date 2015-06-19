//
//  ViewController.swift
//  Challenge 2 - Age of Laika
//
//  Created by Maxence De Damas on 6/19/15.
//  Copyright (c) 2015 Maxence de Damas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsConvertedLabel: UILabel!
    @IBOutlet weak var convertButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertHumanToDogYearsButtonPressed(sender: UIButton) {
        let sizeFromTextField = enterHumanYearsTextField.text.toInt()!
        let conversionConstant = 7
        
        dogYearsConvertedLabel.hidden = false
        dogYearsConvertedLabel.text = "\(sizeFromTextField * conversionConstant) in Dog Years"
        dogYearsConvertedLabel.textColor = UIColor.blueColor()
       
        enterHumanYearsTextField.text = ""
        enterHumanYearsTextField.resignFirstResponder()
        
        convertButton.setTitle("Wof Wof", forState: UIControlState.Normal)
        convertButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        
        
        
    }

}


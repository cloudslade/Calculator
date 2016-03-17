//
//  ViewController.swift
//  Calculator
//
//  Created by Taylor Mott on 10/29/15.
//  Copyright © 2015 DevMountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let resultsLabel = UILabel()
    let button0 = UIButton()
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let buttonDivide = UIButton()
    let buttonMultiply = UIButton()
    let buttonAdd = UIButton()
    let buttonSubtract = UIButton()
    let buttonEnter = UIButton()
    
    func resultsLabelConstraints(label: UILabel) {
        label.backgroundColor = .purpleColor()
        label.textAlignment = NSTextAlignment.Right
        view.addSubview(label)
        label.textColor = .whiteColor()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I am alive!"
    }
    
    func buttonSetup() {
        for button in 0...9 {
            
        }
    }
    
    func buttonConstraints(button1: UIButton, button2: UIButton, button3: UIButton, button4: UIButton){
        let buttons = [button1, button2, button3, button4]
        var constraint: NSLayoutConstraint
        
        // Leading NSLayoutAttribute to view and respective buttons
        constraint = NSLayoutConstraint(item: button1, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: 0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button2, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: button1, attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: 0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button3, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: button2, attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: 0)
        view.addConstraint(constraint)
        
        constraint = NSLayoutConstraint(item: button4, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: button3, attribute: NSLayoutAttribute.Trailing, multiplier: 1.0, constant: 0)
        view.addConstraint(constraint)
        
        // Top of buttons to bottom of label
        for button in buttons {
            constraint = NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: resultsLabel, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0)
            view.addConstraint(constraint)
        }
        
        // Height of buttons
    }

    func labelConstraints(label: UILabel) {
        var constraint: NSLayoutConstraint
        constraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Leading, multiplier: 1.0, constant: 0)
        view.addConstraint(constraint)
        constraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 100)
        view.addConstraint(constraint)
        constraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.Trailing, relatedBy: .Equal, toItem: view, attribute: .Trailing, multiplier: 1.0, constant: 0)
        view.addConstraint(constraint)
        constraint = NSLayoutConstraint(item: label, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 100)
        view.addConstraint(constraint)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blackColor()
        resultsLabelConstraints(resultsLabel)
        labelConstraints(resultsLabel)
        buttonConstraints(button0, button2: button1, button3: button2, button4: button3)
    }
}
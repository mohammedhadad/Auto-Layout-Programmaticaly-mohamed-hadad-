//
//  ViewController.swift
//  first app programmatically
//
//  Created by mohamed on 8/15/16.
//  Copyright © 2016 mohamed. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    var newButton = UIButton()
    var titleLabel = UILabel()
    var textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButton()
        createLabel()
        createtextField()
        addingConstraints()
        view.backgroundColor = UIColor.orangeColor()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func createButton() {
      newButton.setTitle("awe some button", forState: .Normal)
      newButton.backgroundColor = UIColor.orangeColor()
        newButton.layer.cornerRadius = 8
        newButton.layer.borderColor = UIColor.blackColor().CGColor
        newButton.layer.borderWidth = 2
        newButton.addTarget(self, action: #selector(ViewController.ButtonTapped), forControlEvents: .TouchDragInside)
        self.view.addSubview(newButton)
    }
    
    //label
    func createLabel() {
        titleLabel.text = "what is your name "
        titleLabel.textAlignment = .Center
        self.view.addSubview(titleLabel)
        
        
    }
    
    func createtextField() {
        
        //textField
        
        textField.placeholder = " type any thing here "
        textField.textAlignment = .Center
        self.view.addSubview(textField)
        
        
    }
    
    // button action
    func ButtonTapped() {
        titleLabel.text = textField.text
        print("safi rah copya text li f label mzyan :p ")
        
        
    }
    
    //constraints l9oyood
    func addingConstraints() {
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        newButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        // button constrains
        
        let BUTTONhorizontal = NSLayoutConstraint(item: newButton, attribute: .CenterX , relatedBy: .Equal , toItem: view , attribute: .CenterX , multiplier: 1.0 , constant: 0)
        view.addConstraint(BUTTONhorizontal)
        
        let BUTTONvertical = NSLayoutConstraint(item: newButton, attribute: .CenterY , relatedBy: .Equal , toItem: view , attribute: .CenterY , multiplier: 1.0 , constant: 0)
        view.addConstraint(BUTTONvertical)
        
        let BUTTONwidth = NSLayoutConstraint(item: newButton, attribute: .Width , relatedBy: .Equal , toItem: view , attribute: .Width , multiplier: 0.75 , constant: 0)
        view.addConstraint(BUTTONwidth)
        
        let BUTTONhight = NSLayoutConstraint(item: newButton, attribute: .Height , relatedBy: .Equal , toItem: nil , attribute: .NotAnAttribute , multiplier: 1.0 , constant: 0)
        
        view.addConstraint(BUTTONhight)
        // label constraints
        
        
        let LABELhorizontal = NSLayoutConstraint(item: titleLabel, attribute: .CenterX , relatedBy: .Equal, toItem: newButton , attribute: .CenterX, multiplier: 1.0, constant: 0)
        view.addConstraint(LABELhorizontal)
        
        let LABELVertical = NSLayoutConstraint(item: titleLabel, attribute: .CenterY, relatedBy: .Equal, toItem: newButton , attribute: .CenterY, multiplier: 1.0, constant: -150)
        view.addConstraint(LABELVertical)
        
         let LABELwith = NSLayoutConstraint(item: titleLabel, attribute: .Width, relatedBy: .Equal, toItem: view , attribute: .Width , multiplier: 0.75 , constant:0)
        view.addConstraint(LABELwith)
        
        let LABELHeight = NSLayoutConstraint(item: titleLabel, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .Height , multiplier: 1.0, constant:50)
        view.addConstraint(LABELHeight)
    
    //textfield constraits
        let textfieldHorizontal = NSLayoutConstraint(item: textField, attribute: .CenterX , relatedBy: .Equal , toItem: newButton , attribute: .CenterX , multiplier: 1.0 , constant: 0)
        view.addConstraint(textfieldHorizontal)
        
        let textfieldvertical = NSLayoutConstraint(item: textField, attribute: .CenterY , relatedBy: .Equal , toItem: view , attribute: .CenterY , multiplier: 1.0 , constant: 150)
        view.addConstraint(textfieldvertical)
     
        let textfieldWith = NSLayoutConstraint(item: textField, attribute: .Width, relatedBy: .Equal , toItem: newButton , attribute: .Width , multiplier: 1.0 , constant: 0)
        
        view.addConstraint(textfieldWith)
        let textFieldHeight = NSLayoutConstraint(item: textField, attribute: .Height , relatedBy: .Equal , toItem: nil , attribute: .NotAnAttribute , multiplier: 1.0 , constant: 50)
        view.addConstraint(textFieldHeight)
        
    }
    
    

}


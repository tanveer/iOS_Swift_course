//
//  ViewController.swift
//  Postcard
//
//  Created by Tanveer Bashir on 11/1/14.
//  Copyright (c) 2014 Tanveer Bashir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var messageField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMail(sender: UIButton)
    {
        //unhiding label
        message.hidden = false
        
        //getting value from messageField
        var mesg = messageField.text
        
        //getting value from nameField
        var name = nameField.text
        
        //changing the label value
        message.text = mesg
        message.textColor = UIColor.orangeColor()
        nameLabel.text = name
        //hiding keyboard
        messageField.resignFirstResponder()
        
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
    }

}


//
//  ViewController.swift
//  postcard
//
//  Created by David Kennedy on 10/8/14.
//  Copyright (c) 2014 Studio Torgo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameText: UITextField!
    @IBOutlet weak var enterMessageTextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //anything in these brackets will execute when button is pressed
        messageLabel.hidden = false
        nameLabel.hidden = false
        //variable.attribute = state/declaration
        messageLabel.text = enterMessageTextfield.text
        //always declare the item you want to effect first
        //for example, in the above, I want to edit messageLabel.text so I put it first
        messageLabel.textColor = UIColor.redColor()
        //changes color.
        enterMessageTextfield.text = ""
        //clears text field
        enterMessageTextfield.resignFirstResponder()
        //hides the keyboard after you hit the button. () tells you it's a function
        nameLabel.text = enterNameText.text
        nameLabel.textColor = UIColor.blueColor()
        enterNameText.text = ""
        //makes the top label display text from name label
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        //changes text on button, fun stuff
    }

}

/*                          Fun Notes for Cool Cats-
In the line where you were trying to clear the textfield for Enter Name, you have to put it BELOW the line that says nameLabel.text = enterNameText.text, otherwise it will hide the Name Label and you dont want that. Order is important! 
*/
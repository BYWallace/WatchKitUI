//
//  ButtonInterfaceController.swift
//  WatchKitUI
//
//  Created by Brett Wallace on 8/30/15.
//  Copyright (c) 2015 Brett Wallace. All rights reserved.
//

import WatchKit
import Foundation


class ButtonInterfaceController: WKInterfaceController {
    @IBOutlet weak var myButton: WKInterfaceButton!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        myButton.setTitle("Dont't Press!")
        myButton.setBackgroundImage(nil)
        var lightGrayColor = UIColor.lightGrayColor()
        myButton.setBackgroundColor(lightGrayColor)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func buttonPressed() {
        println("Button pressed")
        
        myButton.setEnabled(false)
        
        let blowUpImage = UIImage(named: "BlowUp")
        myButton.setBackgroundImage(blowUpImage)
        
        var boldItalicFont = UIFont(name: "Exo-BlackItalic", size: 15.0)!
        var attributesDictionary = [NSFontAttributeName: boldItalicFont]
        var attributedString = NSAttributedString(string: "uh oh", attributes: attributesDictionary)
        
        myButton.setAttributedTitle(attributedString)
    }
}

//
//  LabelInterfaceController.swift
//  WatchKitUI
//
//  Created by Brett Wallace on 8/29/15.
//  Copyright (c) 2015 Brett Wallace. All rights reserved.
//

import WatchKit
import Foundation


class LabelInterfaceController: WKInterfaceController {
    @IBOutlet weak var myLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
//        myLabel.setText("Hello World")
//        myLabel.setTextColor(UIColor.redColor())
        
//        for family in UIFont.familyNames() as! [String] {
//            println("fam: \(family)")
//            
//            for font in UIFont.fontNamesForFamilyName(family) {
//                println(font)
//            }
//        }
        
        var boldFont = UIFont(name: "Exo-Bold", size: 15.0)!
        var attributesDictionary = [NSFontAttributeName: boldFont, NSForegroundColorAttributeName: UIColor.redColor()]
        var attributedString = NSAttributedString(string: "Hello Class", attributes: attributesDictionary)
        
        myLabel.setAttributedText(attributedString)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

//
//  SwitchInterfaceController.swift
//  WatchKitUI
//
//  Created by Brett Wallace on 8/30/15.
//  Copyright (c) 2015 Brett Wallace. All rights reserved.
//

import WatchKit
import Foundation


class SwitchInterfaceController: WKInterfaceController {
    @IBOutlet weak var lightSwitch: WKInterfaceSwitch!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        lightSwitch.setColor(UIColor.blueColor())
        lightSwitch.setOn(false)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func lightSwitchTapped(value: Bool) {
        lightSwitch.setColor(UIColor.orangeColor())
        lightSwitch.setEnabled(false)
    }
}

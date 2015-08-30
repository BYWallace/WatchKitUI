//
//  SliderInterfaceController.swift
//  WatchKitUI
//
//  Created by Brett Wallace on 8/30/15.
//  Copyright (c) 2015 Brett Wallace. All rights reserved.
//

import WatchKit
import Foundation


class SliderInterfaceController: WKInterfaceController {
    @IBOutlet weak var mySlider: WKInterfaceSlider!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        mySlider.setEnabled(true)
        mySlider.setValue(3)
        mySlider.setNumberOfSteps(5)
        mySlider.setColor(UIColor.orangeColor())
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sliderDidSlide(value: Float) {
        println(value)
    }
}

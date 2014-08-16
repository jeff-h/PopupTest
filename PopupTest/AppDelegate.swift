//
//  AppDelegate.swift
//  PopupTest
//
//  Created by Jeff Hanbury on 16/08/2014.
//  Copyright (c) 2014 Marmaladesoul. All rights reserved.
//

import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
                            
    @IBOutlet weak var window: NSWindow!

    var myPopup: AXStatusItemPopup!
    var myViewController: PopupViewController!
        
    func applicationDidFinishLaunching(aNotification: NSNotification?) {
        // Insert code here to initialize your application
        
        myViewController = PopupViewController(nibName: "PopupView", bundle: NSBundle.mainBundle())
            
//         myContentViewController = ContentViewController(nibName: "ContentViewController", bundle: NSBundle.mainBundle(), duckDNSModel: self.duckDNSModel)

        
        // init the status item popup
        let image = NSImage(named: "cloud")
        let alternateImage = NSImage(named: "cloudgrey")
        
        myPopup = AXStatusItemPopup(viewController: myViewController, image: image, alternateImage: alternateImage)
    }

    func applicationWillTerminate(aNotification: NSNotification?) {
        // Insert code here to tear down your application
    }


}


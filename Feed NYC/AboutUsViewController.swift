//
//  AboutUsViewController.swift
//  Feed NYC
//
//  Created by Flatiron School on 8/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import ChameleonFramework

class AboutUsViewController: UIViewController {
    @IBOutlet weak var aboutUSText: UITextView!
    @IBOutlet weak var aboutUsTxt1: UITextView!
    @IBOutlet weak var aboutUsTxt2: UITextView!
    @IBOutlet weak var aboutUsTxt3: UITextView!
    @IBOutlet weak var aboutUsTxt4: UITextView!
    @IBOutlet weak var markersText: UITextView!
    @IBOutlet weak var aboutUsTxt5: UITextView!
    @IBOutlet weak var resourcesText: UITextView!
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.flatNavyBlueColor().lightenByPercentage(0.1)
        aboutUSText.textColor = UIColor.flatBlackColor()
        aboutUsTxt1.textColor = UIColor.flatWhiteColor()
        aboutUsTxt2.textColor = UIColor.flatWhiteColor()
        aboutUsTxt3.textColor = UIColor.flatWhiteColor()
        markersText.textColor = UIColor.flatBlackColor()
        aboutUsTxt5.textColor = UIColor.flatWhiteColor()
        resourcesText.textColor = UIColor.flatBlackColor()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = Selector("revealToggle:")
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "aboutUsSegue" {
            let destVC = segue.destinationViewController as! AboutUsViewController
            
        }
    }
    
    @IBAction func webViewButtonTapped(sender: AnyObject) {
    }

}

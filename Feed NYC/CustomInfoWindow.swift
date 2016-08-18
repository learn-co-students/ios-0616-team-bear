//
//  CustomInfoWindow.swift
//  Feed NYC
//
//  Created by Cenker Demir on 8/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@IBDesignable class CustomInfoWindow: UIView {
    
    var view : UIView!
    var isViewLoaded = false
    
    @IBOutlet weak var nameButtonLabel: UIButton!
    
    @IBAction func NameButtonTapped(sender: UIButton) {
        //let sb = UIStoryboard(name: "CenkersStoryboard", bundle: nil)
        print("name button tapped")
    }
    
    func loadViewFromNib() -> UIView {
        isViewLoaded = true
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: "CustomInfoWindow", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        return view
    }
    
    func xibSetup() {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        addSubview(view)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        if isViewLoaded == false {
            xibSetup()
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        if isViewLoaded == false {
            xibSetup()
        }
    }
    
}

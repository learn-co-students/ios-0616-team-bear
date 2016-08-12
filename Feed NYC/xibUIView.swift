//
//  xibUIView.swift
//  Feed NYC
//
//  Created by Flatiron School on 8/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

@IBDesignable class xibUIView: UIView {
    

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var view: UIView!
    
    @IBInspectable var locationName: String? {
        
        get {
            return locationLabel.text
    }
        set (locationName) {
            locationLabel.text = locationName
        }
    }
    
    @IBInspectable var address: String? {
        
        get {
            return addressLabel.text
        }
        set (address) {
            addressLabel.text = address
        }
    }
    
    @IBInspectable var phoneNumber: String? {
        
        get {
            return phoneLabel.text
        }
        set (phoneNumber) {
            phoneLabel.text = phoneNumber
        }
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
        
    }
    
    
    func setup() {
        
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        
        addSubview(view)
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = NSBundle(forClass:self.dynamicType)
        let nib = UINib(nibName: "xibUIView", bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
        
    }
    
    
    
    //    func commonInit() {
    //        UINib(nibName: "MapPinBubblesViewController", bundle: nil).instantiateWithOwner(self, options: nil)
    //
    //        addSubview(xibView)
    //        xibView.frame = self.bounds
    //    }
    
}



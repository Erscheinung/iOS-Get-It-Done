//
//  GDCheckBox.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 26/05/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import UIKit

class GDCheckbox:UIButton {
    
    var toggled:Bool? {
        didSet {
            if let toggled = toggled {
                if toggled{
                    backgroundColor = .green
                }
                else {
                    self.backgroundColor = .clear
                }
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame:.zero)
        translatesAutoresizingMaskIntoConstraints = false
            
        layer.borderWidth = 1
        layer.borderColor = UIColor.grayZero.cgColor
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

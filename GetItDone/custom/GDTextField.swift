//
//  GDTextField.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 24/03/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import Foundation
import UIKit

class GDTextField:UITextField {
    
    var insets:UIEdgeInsets!
    
    init(frame:CGRect = .zero, placeholder:String = "placeholder", radius:CGFloat = 4, inset:CGFloat = 0) {
        super.init(frame: frame)
        checkIfAutoLayout()
        
        self.placeholder = placeholder
        self.backgroundColor = .white
        self.layer.cornerRadius = radius
        self.insets = UIEdgeInsets(top: 0, left: inset, bottom: 0, right: 0)
        self.textColor = .grayZero
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.inset(bounds)(by: self.insets)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.inset(bounds)(by: self.insets)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.inset(bounds)(by: self.insets)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

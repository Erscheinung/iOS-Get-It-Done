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
    
    init(frame:CGRect = .zero, placeholder:String = "placeholder") {
        super.init(frame: frame)
        checkIfAutoLayout()
        
        self.placeholder = placeholder
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

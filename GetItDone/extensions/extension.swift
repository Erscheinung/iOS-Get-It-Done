//
//  extension.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 18/02/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import Foundation

import UIKit

extension UIColor {
    
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red)/255.0, green: CGFloat(green)/255.0, blue:CGFloat(blue)/255.0, alpha: 1.0)
    }
    
}

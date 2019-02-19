//
//  GDGradient.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 18/02/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import UIKit
import Foundation

class GDGradient: UIView { 
    
//    var colors:[CGColor] = [
//        UIColor.init(red: 100, green: 228, blue: 255).cgColor,
//        UIColor.init(red: 58, green: 123, blue: 213).cgColor
//    ]
    
    var hexColors: [CGColor] = [
        UIColor.blueZero.cgColor,
        UIColor.blueOne.cgColor
    ]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        if let layer = self.layer as? CAGradientLayer {
            layer.colors = self.hexColors
            layer.locations = [0.0, 1.2]
        }
        
    }
    
    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

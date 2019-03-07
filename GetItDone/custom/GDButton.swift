//
//  GDButton.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 25/02/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import Foundation
import UIKit

class GDButton:UIButton {
    
    var title:String!
    var type:ButtonOptions!
    var radius:CGFloat!
    
    init(title: String = "button text", frame:CGRect = .zero, type: ButtonOptions = .roundedText, radius:CGFloat = 20) {
        super.init(frame: frame)
        if frame == .zero {
            self.translatesAutoresizingMaskIntoConstraints = false
        }

        self.title = title
        self.type = type
        self.radius = radius
        self.phaseTwo()
    }
    
    func phaseTwo() {
        self.setTitle(self.title, for: .normal)
        self.setTitleColor(.grayZero, for: .normal)
        self.backgroundColor = .white
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont(name: "Raleway-v4020-Regular",size: 16)
        }
        
        switch self.type {
        case ButtonOptions.roundedText:
            self.roundedText()
        case ButtonOptions.squareIcon:
            self.squareIcon()
        default: break;
        }
    }
    
    func squareIcon() {
        // Custom icon placeholder
        if let titleLabel = self.titleLabel {
            titleLabel.font = UIFont(name: "Raleway-v4020-Regular",size: 16)
        }
    }
    
    func roundedText() {
        self.layer.cornerRadius = self.radius
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  NewItemPopup.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 07/03/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import Foundation
import UIKit

class NewItemPopup:GDGradient {
    
    let cancel = GDButton(title: "  cancel  ", type: .roundedText, radius: 3)
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        let inset:CGFloat = 16
        
        self.layer.cornerRadius = 14
        
        addSubview(cancel)
        cancel.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        cancel.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        cancel.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

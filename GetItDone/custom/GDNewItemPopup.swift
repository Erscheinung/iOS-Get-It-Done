//
//  NewItemPopup.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 07/03/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import Foundation
import UIKit

class GDNewItemPopup:GDGradient {
    
    let cancel = GDButton(title: "  cancel  ", type: .roundedText, radius: 4)
    let add = GDButton(title: "  add  ", type: .roundedText, radius: 4)
    let textField = GDTextField(placeholder: "LOLOLOLOL ", inset: 6)
    var delegate:GDNewItemDelegate?
    
    @objc func handleCancel() {
        print("Trying to handle cancel")
    }
    
    @objc func handleAdd() {
        if let delegate = self.delegate, let textFieldText = self.textField.text {
            delegate.addItemToList(text: textFieldText)
        }
    }
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        let inset:CGFloat = 12
        
        self.layer.cornerRadius = 14
        
        addSubview(cancel)
        cancel.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        cancel.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        cancel.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(add)
        add.rightAnchor.constraint(equalTo: rightAnchor, constant: inset * -1).isActive = true
        add.topAnchor.constraint(equalTo: topAnchor, constant: inset).isActive = true
        add.heightAnchor.constraint(equalToConstant: 24).isActive = true
        
        addSubview(textField)
        textField.leftAnchor.constraint(equalTo: leftAnchor, constant: inset).isActive = true
        textField.rightAnchor.constraint(equalTo: rightAnchor, constant: inset * -1).isActive = true
        textField.topAnchor.constraint(equalTo: add.bottomAnchor, constant: 8).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 28).isActive = true
        
        cancel.addTarget(self, action: #selector(self.handleCancel), for: .touchUpInside)
        add.addTarget(self, action: #selector(self.handleAdd), for: .touchUpInside)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

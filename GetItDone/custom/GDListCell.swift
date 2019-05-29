//
//  GDTabelCell.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 12/05/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import UIKit

class GDListCell:UITableViewCell {
    
    //let titleLabel = GDLabel(color: .grayZero, size: 16)
    let textField = GDTextField(placeholder: "ToDo", radius: 0, inset: 14)
    let view:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let box = GDCheckbox()
    
    var toDo:ToDo? {
        didSet {
            if let toDo = toDo {
                box.toggled = toDo.status
                textField.text = toDo.title
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        backgroundColor = .clear
        
        view.backgroundColor = .white

        
        addSubview(view)
        view.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        view.topAnchor.constraint(equalTo: topAnchor, constant: 3).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -3).isActive = true
        view.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        view.addSubview(textField)
        view.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        view.topAnchor.constraint(equalTo: topAnchor, constant: 6).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -6).isActive = true
        view.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        addSubview(box)
        box.rightAnchor.constraint(equalTo: rightAnchor, constant: -14).isActive = true
//        box.topAnchor.constraint(equalTo: topAnchor, constant: 6).isActive = true
//        box.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -6).isActive = true //40-6 = 30 pixels high
        box.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        box.widthAnchor.constraint(equalToConstant: 22).isActive = true
        box.heightAnchor.constraint(equalTo: box.widthAnchor).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

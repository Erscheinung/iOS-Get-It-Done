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
    
    var toDo:ToDo? {
        didSet {
            if let toDo = toDo {
                print(toDo.status)
                self.textField.text = toDo.title
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
        view.topAnchor.constraint(equalTo: topAnchor, constant: 3).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -3).isActive = true
        view.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

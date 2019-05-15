//
//  GDTabelCell.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 12/05/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import UIKit

class GDListCell:UITableViewCell {
    
    let titleLabel = GDLabel(color: .grayZero, size: 16)
    
    var toDo:ToDo? {
        didSet {
            if let toDo = toDo {
                print(toDo.status)
                self.titleLabel.text = toDo.title
            }
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        backgroundColor = .clear
        
        addSubview(titleLabel)
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 4).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        titleLabel.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
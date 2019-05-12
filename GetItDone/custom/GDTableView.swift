//
//  GDTableView.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 12/05/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import UIKit

class GDTableView:UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        checkIfAutoLayout()
        backgroundColor = .clear
        separatorStyle = .none
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


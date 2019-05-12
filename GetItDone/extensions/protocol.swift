//
//  protocol.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 04/03/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import Foundation

protocol GDHeaderDelegate {
    func openAddItemPopup()
}

protocol GDNewItemDelegate {
    func addItemToList(text:String)
}

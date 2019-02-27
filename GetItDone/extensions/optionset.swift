//
//  optionset.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 27/02/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import Foundation

struct ButtonOptions: OptionSet {
    let rawValue: Int
    
    static let roundedText = ButtonOptions(rawValue: 1 << 0)
    static let squareIcon  = ButtonOptions(rawValue: 1 << 1)
    //static let squareText    = ButtonOptions(rawValue: 1 << 2)
}

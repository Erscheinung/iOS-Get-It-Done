//
//  CoreDataManager.swift
//  GetItDone
//
//  Created by Kartikeya Chauhan on 07/06/19.
//  Copyright © 2019 Jungian Typology. All rights reserved.
//

import CoreData

struct CoreDataManager {
    
    static let shared = CoreDataManager()
    
    let persistentContainer:NSPersistentContainer = {
        let container = NSPersistentContainer(name: "GetItDone")
        container.loadPersistentStores { (storeDescription, err) in
            if let err = err {
                fatalError("loading of store failed: \(err)")
            }
        }
        return container
    }()
}



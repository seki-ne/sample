//
//  RealmManager.swift
//  MyApp
//
//  Copyright © 2020 test. All rights reserved.
//

import Foundation
import RealmSwift

class RealmManager {
    static func setup() {
        let schemaVersion: UInt64 = 1 // update to 2 will got 'RLMException', reason: 'Can only delete an object from the Realm it belongs to.'

        let config = Realm.Configuration(
            schemaVersion: schemaVersion,
            migrationBlock: { migration, oldSchemaVersion in
                if oldSchemaVersion < 3 {
                    migration.enumerateObjects(ofType: Cat.className()) { oldObject, _ in
                        migration.delete(oldObject!)
                    }
                }
            }
        )
        Realm.Configuration.defaultConfiguration = config
    }
}

class Cat: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var color: String = ""
}

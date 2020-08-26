//
//  ViewController.swift
//  MyApp
//
//  Copyright © 2020 test. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let realm = try! Realm()
        let cat = Cat()
        cat.name = "momo"
        cat.color = "orange"
        try! realm.write {
            realm.add(cat)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
          super.viewDidAppear(animated)
    }

}


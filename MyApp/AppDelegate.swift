//
//  AppDelegate.swift
//  MyApp
//
//  Copyright © 2020 test. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? // これを追加
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        RealmManager.setup()
        return true
    }

}


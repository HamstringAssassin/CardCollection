//
//  AppDelegate.swift
//  CardCollection
//
//  Created by Alan O'Connor on 24/01/2020.
//  Copyright © 2020 hammyassassin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)

        let navigationController = UINavigationController(rootViewController: HomeViewController())

        self.window?.rootViewController = navigationController

        self.window?.makeKeyAndVisible()

        return true
    }
}


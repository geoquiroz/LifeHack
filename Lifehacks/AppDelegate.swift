//
//  AppDelegate.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 3/28/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var stateController = StateController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.setCustomApperance()
        if let initialViewContoller = window?.rootViewController as? Stateful {
            initialViewContoller.stateController = stateController
        }
        return true
    }

}
     



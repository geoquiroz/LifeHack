//
//  MainTabBarController.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 5/26/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, Stateful {
    var stateController: StateController?
    
    override func viewDidLoad() {
    guard let viewControllers = viewControllers else {
            return
        }
        for case let navigationController as UINavigationController in viewControllers {
            if let rootViewController = navigationController.viewControllers.first as? Stateful {
                passState(to: rootViewController)
            }
        }
    }
}

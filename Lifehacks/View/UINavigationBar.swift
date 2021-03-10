//
//  UINavigationBar.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 6/3/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//

import UIKit

extension UINavigationBar {
    static func setCustomApperance() {
        UINavigationBar.appearance().tintColor = .white
        UINavigationBar.appearance().barTintColor = .wedgewood
        UINavigationBar.appearance().isTranslucent = false
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
}

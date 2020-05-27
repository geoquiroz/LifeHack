//
//  Stateful.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 5/14/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//

import Foundation

protocol Stateful: class {
    var stateController: StateController? { get set }
}
 
extension Stateful {
    func passState(to destination: Stateful) {
        destination.stateController = stateController
    }
}

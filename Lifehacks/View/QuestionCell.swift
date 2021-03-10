//
//  QuestionCell.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 6/11/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//


import UIKit

class QuestionCell: UITableViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var ownerLabel: UILabel!
    @IBOutlet private weak var scoreLabel: UILabel!
    
    var score: Int? {
        didSet {
            scoreLabel.text = "\(score ?? 0)"
        }
    }
    
    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    var username: String? {
        didSet {
            ownerLabel.text = "Asked by: " + (username ?? "")
        }
    }
}

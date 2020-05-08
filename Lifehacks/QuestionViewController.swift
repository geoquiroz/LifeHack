//
//  ViewController.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 3/28/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var ownerImageView: UIImageView!
    
    @IBOutlet weak var ownerNameLabel: UILabel!
    
  
    
    private let stateController = StateController()
    
    override func viewDidLoad() {
    super.viewDidLoad()
    let question = stateController.question
    titleLabel.text = question.title
    bodyLabel.text = question.body
    updateScore(for: question)
    scoreLabel.text = "\(question.score)"
    let owner = question.owner
    ownerImageView.image = UIImage(named: owner.profileImage)
    ownerNameLabel.text = owner.name
        
    }
    
      @IBAction func voteUp(_ sender: Any) {
          stateController.question.voteUp()
          updateScore(for: stateController.question)
          
      }
      @IBAction func voteDown(_ sender: Any) {
          stateController.question.voteDown()
          updateScore(for: stateController.question)
      }
    
    private func updateScore(for question: Question) {
        scoreLabel.text = "\(question.score)"
    }
    
}




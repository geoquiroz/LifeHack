//
//  TopQuestionsViewController.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 6/6/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//

import UIKit

class TopQuestionsViewController: UIViewController, Stateful {
    @IBOutlet weak var tableView: UITableView!
    var questionsDataSource: QuestionsDataSource?
    var stateController: StateController?
    
    override func viewWillAppear(_ animated: Bool) {
        guard let topQuestions = stateController?.topQuestions else {
            return
        }
        questionsDataSource = QuestionsDataSource(questions: topQuestions)
        tableView.dataSource = questionsDataSource
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let questionViewController = segue.destination as? QuestionViewController else {
            return
        }
        passState(to: questionViewController)
        if let indexPath = tableView.indexPathForSelectedRow {
            questionViewController.question = questionsDataSource?.question(at: indexPath)
        }
    }
}




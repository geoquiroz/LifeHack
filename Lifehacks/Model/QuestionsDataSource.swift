//
//  QuestionsDataSource.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 6/12/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//

import UIKit

class QuestionsDataSource: NSObject {
   
    private let questions: [Question]
    
    init(questions: [Question]){
        self.questions = questions
    }
    func question(at indexPath: IndexPath) -> Question {
        return questions[indexPath.row]
    }
}

extension QuestionsDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: QuestionCell.self), for: indexPath) as! QuestionCell
        let question = self.question(at: indexPath)
        cell.score = question.score
        cell.title = question.title
        cell.username = question.owner.name
        return cell
    }
}

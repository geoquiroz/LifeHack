//
//  Model.swift
//  Lifehacks
//
//  Created by Geovanny quiroz on 3/28/20.
//  Copyright © 2020 Geovanny quiroz. All rights reserved.
//


struct User: Equatable {
    let name: String
    let aboutMe: String
    let profileImage: String
    let reputation: Int
}

struct Question {
    let title: String
    let body: String
    private (set) var score: Int
    let owner: User
    
    mutating func voteUp(){
        score += 1
    }
    
    mutating func voteDown() {
        score -= 1
    }
    
}

extension Question: Equatable {
    static func == (lhs: Question, rhs: Question) -> Bool {
        return
            lhs.title == rhs.title &&
                lhs.body == rhs.body &&
                lhs.owner == rhs.owner
    }
}

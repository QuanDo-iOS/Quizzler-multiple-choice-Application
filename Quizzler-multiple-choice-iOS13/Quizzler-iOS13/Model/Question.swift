//
//  Question.swift
//  Quizzler-multiple-choice-iOS13
//
//  Created by Quan's Macbook on 30/12/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var q : String
    var a : [String]
    var correctAnswer : String
    init(q : String , a : [String] , correctAnswer : String ) {
        self.q = q
        self.a = a
        self.correctAnswer  = correctAnswer
    }
}

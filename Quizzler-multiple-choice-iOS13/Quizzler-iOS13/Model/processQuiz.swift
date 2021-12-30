//
//  processQuiz.swift
//  Quizzler-multiple-choice-iOS13
//
//  Created by Quan's Macbook on 30/12/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct processQuiz {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    var numberQuestion = 0
    var score = 0
    func checkAnswerButton() -> String {
        switch self.quiz[numberQuestion].correctAnswer {
        case self.quiz[numberQuestion].a[0] :
            return "option 1"
        case self.quiz[numberQuestion].a[1] :
            return "option 2"
        default :
            return "option 3"
        }
    }
    
    func checkUserAnswer(_ userAnswer : String) -> Bool {
        if userAnswer == self.quiz[numberQuestion].correctAnswer {
            return true
        } else {
            return false 
        }
    }
    
    mutating func checkNextQuestion() -> Void {
        if self.numberQuestion + 1 < self.quiz.count {
            self.numberQuestion += 1
        } else {
            self.numberQuestion = 0
            self.score = 0
        }
    }
    
    func updateProgress() -> Float {
        return Float(numberQuestion) / Float(self.quiz.count)
    }
}

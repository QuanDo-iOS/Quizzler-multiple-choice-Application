//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var Quiz = processQuiz()
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        Quiz.numberQuestion = 0
        updateQuestion()
    }
    
    @IBAction func userChoice(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        
        if Quiz.checkUserAnswer(userAnswer) == true {
            sender.backgroundColor = UIColor.green
            Quiz.score += 1
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        Quiz.checkNextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func updateQuestion() -> Void {
        questionLabel.text = Quiz.quiz[Quiz.numberQuestion].q
        progressBar.progress = Quiz.updateProgress()
        scoreLabel.text = "Score : \(Quiz.score)"
        
        option1Button.backgroundColor = UIColor.clear
        option2Button.backgroundColor = UIColor.clear
        option3Button.backgroundColor = UIColor.clear
        
        option1Button.setTitle(Quiz.quiz[Quiz.numberQuestion].a[0], for: .normal)
        option2Button.setTitle(Quiz.quiz[Quiz.numberQuestion].a[1], for: .normal)
        option3Button.setTitle(Quiz.quiz[Quiz.numberQuestion].a[2], for: .normal)
    }
    

}


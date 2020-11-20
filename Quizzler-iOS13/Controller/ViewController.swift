//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var quizlabel: UILabel!
    @IBOutlet weak var truebutton: UIButton!
    @IBOutlet weak var falsebutton: UIButton!
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var scorelabel: UILabel!
    
    
    var quizBrain = QuizBrain()
    
                
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuiz()
    }

    @IBAction func answerbutton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if actualAnswer{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuiz), userInfo: nil, repeats: false)
        
        
    }
    @objc func updateQuiz(){
        quizlabel.text = quizBrain.getQuestionText()
        truebutton.backgroundColor = UIColor.clear
        falsebutton.backgroundColor = UIColor.clear
        progressbar.progress = quizBrain.getProgress()
        scorelabel.text = "Score: \(quizBrain.getScore())"
    }
}


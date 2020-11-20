//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Farrish Ravi on 19/11/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    var quiz =
        [
            question(text:"Apakah nabi muhammad di beri laqob al-amin oleh penduduk quraisy?",answer:"True"),
            question(text:"Apakah mu'jizat nabi musa adalah diturunkan nya kitab taurat?",answer:"True"),
            question(text: "Apakah istri kedua rasulullah adalah khodijah?",answer: "False"),
            question(text: "Apakah umar merupakan kahlifah kedua di dalam sejarah islam?",answer: "True"),
            question(text: "Apakah Abu bakar yang menemani rasulullah ketika di dalam gua hira?",answer: "True"),
            question(text: "Apakah Ali merupakan paman rasulullah ?",answer: "False"),
            question(text: "Apakah rukun islam berjumlah 6",answer: "False"),
            question(text: "Apakah puasa merupakan tiang agama",answer: "False"),
            question(text: "Sholat subuh 2 rakaat",answer: "True"),
            question(text: "Tanda hari kiamat,keluar nya dajjal",answer: "True")
        ]
    var questionNumber = 0
    var score = 0
    
    mutating func getScore() -> Int{
        return score
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float{
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func checkAnswer(userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer{
            score += 10
            return true
        }else{
            return false 
        }
    }
}

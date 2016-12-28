//
//  Themes.swift
//  Final Fantasy Trivia
//
//  Created by Harold Davis on 12/16/16.
//  Copyright © 2016 Harold Davis. All rights reserved.
//

import Foundation
import UIKit


//QuizType
enum FinalFantasyThemes  {
    case FF_12
    case FF_4
    case FF_10
    case FF_15
    
    var background: UIImage {
        switch self {
        case .FF_12: return #imageLiteral(resourceName: "FF_12")
        case .FF_4: return #imageLiteral(resourceName: "FF_4")
        case .FF_10: return #imageLiteral(resourceName: "FF_10")
        case .FF_15: return #imageLiteral(resourceName: "FF_15")
        
        }
    }
    
    var VictorySound: String {
        switch self {
        case .FF_12: return "Final Fantasy XII - Victory Fanfare"
        case .FF_4: return "Final Fantasy IV Ds Ost- Victory Fanfare"
        case .FF_10: return "FFI - Victory"
        case .FF_15: return "Final Fantasy VII - Victory Fanfare HQ"
        }
    }
}


enum CorrectAnswer {
    case AnswerOne
    case AnswerTwo
    case AnswerThree
    case AnswerFour
}

struct ExtendedGraphemeClusterType{
    
    var wallpaper: UIImage
    var victoryTheme: String
}

struct Answer {
    var answer: String
    var correct: Bool
}


class Question {
    //Question
    var question: String
    
    //Answers
    var answerOne: Answer
    var answerTwo: Answer
    var answerThree: Answer
    var answerFour: Answer
    //Themes
    var theme: FinalFantasyThemes
    
    //Initializer for the Question Class
    init(question: String, answerOne:Answer, answerTwo: Answer, answerThree: Answer, answerFour: Answer, theme: FinalFantasyThemes){
        self.answerOne = answerOne
        self.answerTwo = answerTwo
        self.answerThree = answerThree
        self.answerFour = answerFour
        self.question = question
        self.theme = theme
    }
    //Checking the answer will be called when the "Check Answers Button" is pressed
    func checkAnswer(A1: Bool, A2: Bool, A3: Bool, A4: Bool)-> (Bool) {
        
        if (A1 == answerOne.correct) && (A2 == answerTwo.correct) && (A3 == answerThree.correct) && (A4 == answerFour.correct) {
            return true
        
            } else {
            return false
        
        }
    
    
    }
    
}









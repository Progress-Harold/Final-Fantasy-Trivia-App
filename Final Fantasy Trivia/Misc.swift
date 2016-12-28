//
//  Misc.swift
//  Final Fantasy Trivia
//
//  Created by Harold Davis on 12/19/16.
//  Copyright © 2016 Harold Davis. All rights reserved.
//

import Foundation
import UIKit
import GameKit


var answerOne: Bool = false
var answerTwo: Bool = false
var answerThree: Bool = false
var answerFour: Bool = false



func randomQuestion()-> (Question) {
    //random Number generator
    let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: collectionOfQuestions.count)
    let randomQuestion = collectionOfQuestions[randomNumber]
    return randomQuestion
    
}

var blankQuestion = Question(question: "", answerOne: Answer(answer:"", correct: false), answerTwo: Answer(answer:"", correct: false), answerThree: Answer(answer:"", correct: false), answerFour: Answer(answer:"", correct: false), theme: .FF_10)


var questionTracker: [Question] = [blankQuestion]

func questionToCheck(q: Question) -> Bool {
    var value: Bool = false
        for question in questionTracker {
            if (question.question == q.question) {
                value = true
            } else {
               value = false
            }
        
        }
        return value
    }
    
    
    

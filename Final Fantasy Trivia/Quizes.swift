//
//  Quizes.swift
//  Final Fantasy Trivia
//
//  Created by Harold Davis on 12/16/16.
//  Copyright © 2016 Harold Davis. All rights reserved.
//

import Foundation



//Questons && Trivia

let FF12Q1 = Question(question: "Which of the following statements is true about FF 12", answerOne: Answer(answer: "Basch's brothers is Judge Gabranth", correct: true), answerTwo: Answer(answer:"there are no crystals in FF 12", correct: false), answerThree: Answer(answer: "There is no charecter named Cid in this iteration", correct: false), answerFour: Answer(answer:"the sword masamune is not in this iteration", correct: false), theme: .FF_12)

let FF10Q1 = Question(question: "Which of the following statements is true about FF 10", answerOne: Answer(answer: "Tidus dies at the end of the game", correct: true), answerTwo: Answer(answer: "Tidus and Yuna hate each other", correct: false), answerThree: Answer(answer: "Tidus and Yuna are in love", correct: true), answerFour: Answer(answer: "Yojimbo is a main charecter in this iteration", correct: false), theme: .FF_10)

let FF4Q1 = Question(question: "Which of the following statements is true about FF 4", answerOne: Answer(answer: "Cecil is conflicted with following oders from the king.", correct: true), answerTwo: Answer(answer: "cecil is evil", correct:false), answerThree: Answer(answer: "dragoon armor is green", correct: false), answerFour: Answer(answer: "Aaron is a main cherecter in this iteration", correct: false), theme: .FF_4)

let FF15Q1 = Question(question: "Which of the following statements is true about FF 15", answerOne: Answer(answer: "Noctis dad is the real villain", correct: false), answerTwo: Answer(answer: "Noctis father dies", correct: false), answerThree: Answer(answer: "noctis can do water element attacks", correct: false), answerFour: Answer(answer: "promto was over weight before he introduced himself to noctis", correct: true), theme: .FF_15)

let FF12Q2 = Question(question: "Which statmement is true", answerOne: Answer(answer: "Basches brother is revealed to be Judge Gabranth", correct: true), answerTwo: Answer(answer: "Yojimbo is one of the major charecters within the game", correct: false), answerThree: Answer(answer: "There is no main charecter to FF12 each charecter has equal importants", correct: true), answerFour: Answer(answer: "The main charecters use the power of crystals to win the final bout", correct: false), theme: .FF_12)

let FF4Q2 = Question(question: "Which statment is true about FF4", answerOne: Answer(answer: "Cecil will not obay the king out of fear of curruption", correct: true), answerTwo: Answer(answer: "Dragoon is the class style cecil starts as.", correct: true), answerThree: Answer(answer: "Dragoon armor is green", correct: false), answerFour: Answer(answer: "Yojimbo makes an appearance", correct: false), theme: .FF_4)



var collectionOfQuestions: [Question] = [FF4Q2,FF12Q1,FF10Q1,FF15Q1,FF4Q1,FF12Q2]

//
//  TriviaQuestions.swift
//  Final Fantasy Trivia
//
//  Created by Harold Davis on 12/16/16.
//  Copyright © 2016 Harold Davis. All rights reserved.
//

import UIKit
import Foundation
import GameKit

import AVFoundation




class TriviaQuestions: UIViewController {


    var counter = 4
    var counterTwo = 4
    var player = AVAudioPlayer()
    //Current Questions
    var nextQuestion = randomQuestion()

    
    
    //////////////
    //<-Images->//
    //////////////
    
    //Background
    @IBOutlet weak var BackgroundImage: UIImageView!
    @IBOutlet weak var score: UIImageView!
    
    

    
    
    
    @IBOutlet weak var currentQuestion: UILabel!
    @IBOutlet weak var Status: UILabel!
    
    ///////////////
    //<-Answers->//
    ///////////////
    
    //text labels for answers
    @IBOutlet weak var answerOneTextLabel: UILabel!
    @IBOutlet weak var answerTwoTextLabel: UILabel!
    @IBOutlet weak var answerThreeTextLabel: UILabel!
    @IBOutlet weak var answerFourTextLabel: UILabel!
    
    //Buttons
    @IBOutlet weak var selectedAnswerOne: UIButton!
    @IBOutlet weak var selectedAnswerTwo: UIButton!
    @IBOutlet weak var selectedAnswerThree: UIButton!
    @IBOutlet weak var selectedAnswerFour: UIButton!
    
    //Checking Answer button
    @IBAction func checkAnswers(_ sender: UIButton) {
        checkAnswersTo(question: nextQuestion, one: nextQuestion.answerOne.correct, two: nextQuestion.answerTwo.correct, three: nextQuestion.answerThree.correct, four: nextQuestion.answerFour.correct)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        do {
        
        
        
            player = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: nextQuestion.theme.VictorySound, ofType: "mp3")!))
            player.prepareToPlay()
        
        } catch {
            print(error)
        
        
        }
        
        
        startGame()
        buttonController()
        // Do any additional setup after loading the view.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //selecting random question from the array!
    func presentNext(question: Question) {
        let currentQuestionFromArray: Question = question

        
        
        currentQuestion.text = currentQuestionFromArray.question
        
        answerOneTextLabel.text = currentQuestionFromArray.answerOne.answer
        answerTwoTextLabel.text = currentQuestionFromArray.answerTwo.answer
        answerThreeTextLabel.text = currentQuestionFromArray.answerThree.answer
        answerFourTextLabel.text = currentQuestionFromArray.answerFour.answer
        
        BackgroundImage.image = currentQuestionFromArray.theme.background
        
    }
    
    
    //////////////////////////////
    ///Button Controller Method///
    //////////////////////////////
    
    func buttonController() {
        selectedAnswerOne.addTarget(self, action: #selector(lightText(_:)), for: .touchUpInside)
        selectedAnswerTwo.addTarget(self, action: #selector(lightText(_:)), for: .touchUpInside)
        selectedAnswerThree.addTarget(self, action: #selector(lightText(_:)), for: .touchUpInside)
        selectedAnswerFour.addTarget(self, action: #selector(lightText(_:)), for: .touchUpInside)
    }
    
    
    
    
    //Change color of the text indicating the answer was selected
    func lightText(_ sender: UIButton) {

        if (sender == selectedAnswerOne && answerOneTextLabel.textColor == UIColor.green){
            answerOneTextLabel.textColor = UIColor.white
        
        } else if (sender == selectedAnswerTwo && answerTwoTextLabel.textColor == UIColor.green){
            answerTwoTextLabel.textColor = UIColor.white
            
        }else if (sender == selectedAnswerThree && answerThreeTextLabel.textColor == UIColor.green){
            answerThreeTextLabel.textColor = UIColor.white
            
        }else if (sender == selectedAnswerFour && answerFourTextLabel.textColor == UIColor.green){
            answerFourTextLabel.textColor = UIColor.white
            
        } else {
                switch sender {
                case selectedAnswerOne:
                        return answerOneTextLabel.textColor = UIColor.green
                case selectedAnswerTwo:
                    return answerTwoTextLabel.textColor = UIColor.green
                case selectedAnswerThree:
                    return answerThreeTextLabel.textColor = UIColor.green
                case selectedAnswerFour:
                    return answerFourTextLabel.textColor = UIColor.green
                default:
                    return

        }
            
        }
        
        
        while answerOneTextLabel.textColor == UIColor.green {
            answerOne = true
        }
        while answerTwoTextLabel.textColor == UIColor.green {
            answerTwo = true
        }
        while answerThreeTextLabel.textColor == UIColor.green {
            answerThree = true
        }
        while answerFourTextLabel.textColor == UIColor.green {
            answerFour = true
        }

        
      
    }

    
    func startGame(){
        resetAnswers()
        displayQuestion()
    }
    
    func checkAnswersTo(question: Question ,one:Bool, two: Bool, three: Bool, four: Bool){
        if (question.answerOne.correct == one) && (question.answerTwo.correct == two) && (question.answerThree.correct == three) && (question.answerFour.correct == four){
            endRound(correct: true)
        } else {
            endRound(correct: false)
        }
    }
    func endRound(correct: Bool){
        if correct == true {
            //Play Victory song with delay and load next round
            //increment score by +1
            playVictorySong()
        } else {
            //load next round with delay
            nextRound()
        }
        
        
    }
    
    func nextRound(){
        resetAnswers()
        displayQuestion()
        
    }
    
    func endGame(){
    
    }
    
    
    
    func displayQuestion(){

        while (questionToCheck(q: nextQuestion)) == true {
            nextQuestion = randomQuestion()
        }
        if (questionToCheck(q: nextQuestion)) == false {
            questionTracker.append(nextQuestion)
            presentNext(question: nextQuestion)
        }
    }
    func resetAnswers(){
        currentQuestion.textColor = UIColor.white
        Status.textColor = UIColor.white
        answerOneTextLabel.textColor = UIColor.white
        answerTwoTextLabel.textColor = UIColor.white
        answerThreeTextLabel.textColor = UIColor.white
        answerFourTextLabel.textColor = UIColor.white

    }
    
    
    
    func playVictorySong() {
        timer()

    }
    
    func timer() {
        if (counter > 0) {
            player.play()
            counter -= 1
        }  else if (counter < 0) && (player.isPlaying) {
            
                player.stop()
            if (player.isPlaying == false){
                nextRound()
            
            }
            }
        
        }
    
    
    
    func resetCounter(){
        counter = 2
    }


   }



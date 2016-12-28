//
//  TitleScreenController.swift
//  Final Fantasy Trivia
//
//  Created by Harold Davis on 12/16/16.
//  Copyright © 2016 Harold Davis. All rights reserved.
//

import UIKit
import Foundation
import GameKit
import AVFoundation

class TitleScreenController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    //////////////
    //<-Images->//
    //////////////
    
    //Background
    @IBOutlet weak var BackgroundImage: UIImageView!
    
    //Buttons
    @IBAction func startButton(_ sender: UIButton) {
        stopTitleScreenMusic()
       self.performSegue(withIdentifier: "segue", sender: TriviaQuestions())
    }
   
    
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playTitleScreenMusic()
        
        do {
            
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Final Fantasy VII - Prelude HQ", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
        } catch {
            print(error)
            
            
        }

        
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    func playTitleScreenMusic() {
        DispatchQueue.main.async {
            self.audioPlayer.play()

            
        }

    
    
    }
    
    func stopTitleScreenMusic() {
    
        
            audioPlayer.stop()

        
        
        
        
        
        
    }

    
    
    
    
    
    
    
    
    
}

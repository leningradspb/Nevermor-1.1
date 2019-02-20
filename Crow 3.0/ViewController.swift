//
//  ViewController.swift
//  Crow 3.0
//
//  Created by Eduard Sinyakov on 27/01/2019.
//  Copyright © 2019 Eduard Sinyakov. All rights reserved.
//

import UIKit
import  AVFoundation

var audioPlayer = AVAudioPlayer()


class ViewController: UIViewController {
    @IBAction func predscarButtonAction(_ sender: UIButton) {
    }
    @IBOutlet weak var predscazOutlet: UIButton!
    
    @IBAction func askButtonAction(_ sender: UIButton) {
    }
    
    @IBOutlet weak var askButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playMusic()
    }
    

    // музыка
    func playMusic() {
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sample", ofType: "mp3")!))
            
            audioPlayer.play()
            
            
        } catch {
            
            print("error")
            
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
   
    

}


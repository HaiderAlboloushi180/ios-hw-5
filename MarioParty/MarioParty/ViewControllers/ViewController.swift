//
//  ViewController.swift
//  MarioParty
//
//  Created by Dalal Alhazeem on 3/24/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

var selectedPlayer = Player(name: "Mario")

class ViewController: UIViewController {
   
    @IBOutlet weak var playerImgView: UIImageView!
    var playerSound: AVAudioPlayer?
    var bgMusic: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        playBGMusic(musicName: "BG.wav")
        // Do any additional setup after loading the view.
        //nextButton.isUserInteractionEnabled = false
    }
    
    func playPlayerSound(soundName: String) {
        let path = Bundle.main.path(forResource: soundName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            playerSound = try AVAudioPlayer(contentsOf: url)
            playerSound?.play()
        } catch {
            // couldn't load file :(
        }
    }
    func playBGMusic(musicName: String) {
        let path = Bundle.main.path(forResource: musicName, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            bgMusic = try AVAudioPlayer(contentsOf: url)
            bgMusic?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
    @IBAction func randomPlayer(_ sender: Any) {
        let randomChrctr = players.randomElement()!
        playerImgView.image = UIImage(named: randomChrctr.name)
        playPlayerSound(soundName: randomChrctr.playerSound())
        selectedPlayer = randomChrctr
    }
    
}


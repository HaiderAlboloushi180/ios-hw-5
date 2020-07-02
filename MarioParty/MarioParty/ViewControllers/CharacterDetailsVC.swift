//
//  CharacterDetailsVC.swift
//  MarioParty
//
//  Created by Haider Al-Boloushi on 7/2/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import UIKit
import AVFoundation

class CharacterDetailsVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var playerImgView: UIImageView!
    @IBOutlet weak var starImgView: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    var playerSound: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedPlayer.name
        playerImgView.image = UIImage(named: selectedPlayer.name)
        bgImg.image = UIImage(named: selectedPlayer.bgName())

        // Do any additional setup after loading the view.
    }
    
    @IBAction func diceTapped(_ sender: Any) {
        var stars = ["Star1", "Star2", "Star3", "Star4", "Star5"]
        let randomStar = stars.randomElement()!
        starImgView.image = UIImage(named: randomStar)
    }
    
    @IBAction func soundTapped(_ sender: Any) {
        playPlayerSound(soundName: selectedPlayer.playerSound())
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

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

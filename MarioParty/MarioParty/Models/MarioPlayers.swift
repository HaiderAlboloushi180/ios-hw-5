//
//  MarioPlayers.swift
//  MarioParty
//
//  Created by Fatimah Alhashem on 7/2/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import Foundation

struct Player {
    var name: String

    func bgName() -> String {
        return name + "BG"
    }
    func playerSound() -> String {
        return name + ".WAV"
    }
}

let players: [Player] = [
    Player(name: "Mario"),
    Player(name: "Luigi"),
    Player(name: "Peach"),
    Player(name: "Bowser"),
    Player(name: "Waluigi"),
    Player(name: "Koopa"),
    Player(name: "Yoshi")
]

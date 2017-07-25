//
//  MyBMCustomPlayer.swift
//  BMPlayer
//
//  Created by tran-ngocdien on 2017/07/25.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import BMPlayer

import BMPlayer

class MyBMCustomPlayer: BMPlayer {
    class override func storyBoardCustomControl() -> BMPlayerControlView? {
        return BMPlayerCustomControlView1()
    }
}


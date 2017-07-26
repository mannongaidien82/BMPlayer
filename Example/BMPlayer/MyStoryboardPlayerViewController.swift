//
//  MyStoryboardPlayerViewController.swift
//  BMPlayer
//
//  Created by tran-ngocdien on 2017/07/25.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import Foundation
import BMPlayer

class MyStoryboardPlayerViewController: UIViewController {
    
    @IBOutlet weak var player: MyBMCustomPlayer!
    
    @IBOutlet weak var heartButton: UIButton!
    @IBOutlet weak var myCurrentTimeLabel: UILabel!
    @IBOutlet weak var mySliderTime: BMTimeSlider!
    @IBOutlet weak var myPlayerButton: UIButton!
    
    var playLayerWidth : CGFloat = 375.0
    var playLayerHeight : CGFloat = 375.0
    
    override func viewDidLoad() {
        print(#function)
        super.viewDidLoad()
        
        if let myPlayerCustomcontrol = MyBMCustomPlayer.storyBoardCustomControl() as? BMPlayerCustomControlView1 {
            player.bringSubview(toFront: myPlayerCustomcontrol)
            myPlayerCustomcontrol.bringSubview(toFront: myPlayerCustomcontrol.bottomMaskView)
        }
//        myPlayerCustomcontrol.playButton = myPlayerButton
//        myPlayerCustomcontrol.timeSlider = mySliderTime
//        myPlayerCustomcontrol.currentTimeLabel = myCurrentTimeLabel
        player.playLayerWidth = playLayerWidth
        player.playLayerHeight = playLayerHeight
        
        player.backBlock = { [unowned self] (isFullScreen) in
            if isFullScreen == true {
                return
            }
            let _ = self.navigationController?.popViewController(animated: true)
        }
        
        let asset = BMPlayerResource(url: URL(string: "http://clips.vorwaerts-gmbh.de/VfE_html5.mp4")!,
                                     name: "周末号外丨中国第一高楼",
                                     cover: nil,
                                     subtitle: nil)
        player.setVideo(resource: asset)
        
        BMPlayerConf.topBarShowInCase = .none
    }
}

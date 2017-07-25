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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player.backBlock = { [unowned self] (isFullScreen) in
            if isFullScreen == true {
                return
            }
            let _ = self.navigationController?.popViewController(animated: true)
        }
        
        let asset = BMPlayerResource(url: URL(string: "http://baobab.wdjcdn.com/1457162012752491010143.mp4")!,
                                     name: "周末号外丨中国第一高楼",
                                     cover: nil,
                                     subtitle: nil)
        player.setVideo(resource: asset)
    }
}

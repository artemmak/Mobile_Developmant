//
//  ViewController.swift
//  lab4
//
//  Created by admin on 26.05.2020.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var VideoView: UIView!
    
    let urlString  = ""
    
    var player = AVPlayer()
    var playerViewController = AVPlayerViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        VideoView.backgroundColor = UIColor.green
        let videoPath = Bundle.main.path(forResource: "mem", ofType: "mp4")
        let videoPathURL = URL(fileURLWithPath: videoPath!)
        player = AVPlayer(url: videoPathURL)
        playerViewController.player = player
            
//        VideoView.addSubview(playerViewController)

        playerViewController.view.frame = VideoView.bounds
        
        addChild(playerViewController)
        
    VideoView.addSubview(playerViewController.view)



    }
    @IBAction func Play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func Pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func STOP(_ sender: Any) {
        player.seek(to: .zero)
        player.pause()
    }
    
    
    
}


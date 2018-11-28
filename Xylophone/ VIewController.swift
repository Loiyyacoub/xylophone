//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController{
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        var url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        
        if(sender.tag == 1){
             url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        }
        if(sender.tag == 2){
             url = Bundle.main.url(forResource: "note2", withExtension: "wav")!
        }
        if(sender.tag == 3){
            url = Bundle.main.url(forResource: "note3", withExtension: "wav")!
        }
        if(sender.tag == 4){
            url = Bundle.main.url(forResource: "note4", withExtension: "wav")!
        }
        if(sender.tag == 5){
            url = Bundle.main.url(forResource: "note5", withExtension: "wav")!
        }
        if(sender.tag == 6){
            url = Bundle.main.url(forResource: "note6", withExtension: "wav")!
        }
        if(sender.tag == 7){
            url = Bundle.main.url(forResource: "note7", withExtension: "wav")!
        }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else {return}
            
            player.prepareToPlay()
            player.play()
            
        } catch let error as Error {
            print(error)
        }
    }
    
  

}


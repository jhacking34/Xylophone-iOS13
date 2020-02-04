//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //IB stands for interface builder
    @IBAction func keyPressed(_ sender: UIButton) {
        //Use the IBactions to get informations about the button/sender that triggered the event
       
        //print(sender.titleLabel)
        
        //grabbing the button lable and converting it to text
        let btnTitle : String = sender.titleLabel?.text ?? "C"
        
        //passing the title into the playsound func
        playSound(btnName: btnTitle)
        //This dims the opacity of the button
        sender.alpha = 0.5
       
        //This code delays before the code inside executes.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            sender.alpha = 1.0
        }
    }
    
    func playSound(btnName: String){
        let url = Bundle.main.url(forResource: btnName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    

}


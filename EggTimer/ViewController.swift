//
//  ViewController.swift
//  EggTimer
//
//  Created by Bartuğ Kaan Çelebi on 17.02.2023.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft":300,"Medium":420,"Hard":720]
    var secondsRemaining = 60
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    


    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        progressBar.progress = 1.0
    }
    @objc func updateCounter(selectedTime: Int) {
        if secondsRemaining > 0 {
            print("\(secondsRemaining)")
            secondsRemaining -= 1
        }
        else{
            titleLabel.text = "Done!"
        }
    }
    
        
}


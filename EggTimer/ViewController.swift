//
//  ViewController.swift
//  EggTimer
//
//  Created by Bartuğ Kaan Çelebi on 17.02.2023.
//

import UIKit

class ViewController: UIViewController {
    let eggTimes = ["Soft":5,"Medium":7,"Hard":12]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        let result = eggTimes[hardness]!
    }
        
    
}


//
//  ViewController.swift
//  timerApplication
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 300
    
    func updateValue() {
        timeLabel.text = String(time)
    }
    
    @IBAction func startButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.calculateTime), userInfo: nil, repeats: true)
        

        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        time = 300
        updateValue()
        timer.invalidate()
    }
    
    @IBAction func stopButton(_ sender: Any) {
           timer.invalidate()
    }
   
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var responceLabel: UILabel!
    
    
    func calculateTime() {
        time -= 1
        updateValue()
    }
    
    

    override func viewDidLoad() {
        
        updateValue()
        responceLabel.text = ""
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


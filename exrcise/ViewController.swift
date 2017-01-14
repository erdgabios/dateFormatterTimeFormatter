//
//  ViewController.swift
//  exrcise
//
//  Created by G on 14/01/2017.
//  Copyright © 2017 erdgabios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var timer = Timer()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.updateLabel), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabel() {
        
        let dateFormatter = DateFormatter()
        let timeFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .full
        timeFormatter.timeStyle = .full
        
        dateLabel.text = dateFormatter.string(from: NSDate() as Date)
        timeLabel.text = timeFormatter.string(from: NSDate() as Date)
        
    }
    


}


//
//  Results.swift
//  РазДваПоехали!
//
//  Created by VLADISLAV PERESKOKOV on 26.03.16.
//  Copyright © 2016 Onanimus. All rights reserved.
//

import UIKit

class Result: UIViewController {
    
    
    @IBOutlet var lbl: UILabel!
    
    @IBOutlet var prg: UIProgressView!
    
    @IBOutlet var btn: UIButton!
    
    var counter: UInt32 = 0 {
        didSet {
            let fractionalProgress = Float(counter) / 100.0
            let animated = counter != 0
        
            prg.setProgress(fractionalProgress, animated: animated)
            lbl.text = ("\(counter)%")
            if counter == 100 {
                btn.hidden = false
            }
        }
    }
    override func viewDidLoad() {
        btn.hidden = true
        super.viewDidLoad()
        lbl.text = "0%"
        self.counter = 0
        for _ in 0..<100 {
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), {
                sleep(1)
                dispatch_async(dispatch_get_main_queue(), {
                    self.counter++
                    return
                })
            })
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

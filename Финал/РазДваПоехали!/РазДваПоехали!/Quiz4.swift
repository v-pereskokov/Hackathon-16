//
//  Quiz4.swift
//  РазДваПоехали!
//
//  Created by Влад on 26.03.16.
//  Copyright © 2016 Onanimus. All rights reserved.
//

import UIKit

class Quiz4: UIViewController {
    
    @IBOutlet var sw: UISwitch!
    
    
    @IBOutlet var sw1: UISwitch!
    
    
    @IBOutlet var sw2: UISwitch!
    
    
    @IBOutlet var sw3: UISwitch!
    
    @IBAction func change(sender: AnyObject) {
        Traveller.foo(sw.on, ts1: &Traveller.t2, ts2: &Traveller.t3, ts3: &Traveller.t4, ts4: &Traveller.t6)
    }
    
    
    @IBAction func change1(sender: AnyObject) {
        Traveller.foo(sw.on, ts1: &Traveller.t2, ts2: &Traveller.t3, ts3: &Traveller.t4)
    }
    
    @IBAction func change2(sender: AnyObject) {
        Traveller.foo(sw.on, ts1: &Traveller.t1, ts2: &Traveller.t3)
    }
    
    
    @IBAction func change3(sender: AnyObject) {
        Traveller.foo(sw.on, ts1: &Traveller.t1, ts2: &Traveller.t5) 
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

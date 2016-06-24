//
//  ViewController.swift
//  РазДваПоехали!
//
//  Created by Влад on 25.03.16.
//  Copyright © 2016 Onanimus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do {
            TripData.data = try NSJSONSerialization.JSONObjectWithData(TripData.json_data!, options: NSJSONReadingOptions())
        } catch _ {
            TripData.data = nil
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


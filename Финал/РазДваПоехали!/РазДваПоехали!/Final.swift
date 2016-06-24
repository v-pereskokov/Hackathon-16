//
//  Final.swift
//  РазДваПоехали!
//
//  Created by VLADISLAV PERESKOKOV on 26.03.16.
//  Copyright © 2016 Onanimus. All rights reserved.
//

import UIKit

import Foundation

class Final: UIViewController {
    
    @IBOutlet var cell1: UILabel!
    
    @IBOutlet var cell2: UILabel!

    @IBOutlet var cell3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if TripData.isRand! {
            TripData.resArr = TripData.travellerPrefs[Traveller.calcType()]
            var i1 = arc4random_uniform(UInt32(TripData.resArr.count))
            var i2:UInt32, i3:UInt32
            repeat {
                i2 = arc4random_uniform(UInt32(TripData.resArr.count))
            } while i1 == i2
            repeat {
                i3 = arc4random_uniform(UInt32(TripData.resArr.count))
            } while (i1 == i3) || (i2 == i3)
            
            var txt = TripData.data!["countries"]!![Int(i1)]["name"] as! String
            cell1.text = txt
            txt = TripData.data!["countries"]!![Int(i2)]["name"] as! String
            cell2.text = txt
            txt = TripData.data!["countries"]!![Int(i3)]["name"] as! String
            cell3.text = txt
        } else {
            var i1 = arc4random_uniform(UInt32(TripData.data!["countries"]!!.count))
            var i2:UInt32, i3:UInt32
            repeat {
                i2 = arc4random_uniform(UInt32(TripData.data!["countries"]!!.count))
            } while i1 == i2
            repeat {
                i3 = arc4random_uniform(UInt32(TripData.data!["countries"]!!.count))
            } while (i1 == i3) || (i2 == i3)
            
            var txt = TripData.data!["countries"]!![Int(i1)]["name"] as! String
            cell1.text = txt
            txt = TripData.data!["countries"]!![Int(i2)]["name"] as! String
            cell2.text = txt
            txt = TripData.data!["countries"]!![Int(i3)]["name"] as! String
            cell3.text = txt
        }
//        var i1 = arc4random_uniform(UInt32(TripData.resArr.count))
//        var i2:UInt32, i3:UInt32
//        repeat {
//            i2 = arc4random_uniform(UInt32(TripData.resArr.count))
//        } while i1 == i2
//        repeat {
//            i3 = arc4random_uniform(UInt32(TripData.resArr.count))
//        } while (i1 == i3) || (i2 == i3)
//        
//        var txt = TripData.data!["countries"]!![Int(i1)]["name"] as! String
//        cell1.text = txt
//        txt = TripData.data!["countries"]!![Int(i2)]["name"] as! String
//        cell2.text = txt
//        txt = TripData.data!["countries"]!![Int(i3)]["name"] as! String
//        cell3.text = txt
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

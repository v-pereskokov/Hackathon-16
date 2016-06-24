//
//  Travaller.swift
//  РазДваПоехали!
//
//  Created by VLADISLAV PERESKOKOV on 26.03.16.
//  Copyright © 2016 Onanimus. All rights reserved.
//


class Traveller
{
    static var t1 = 0
    static var t2 = 0
    static var t3 = 0
    static var t4 = 0
    static var t5 = 0
    static var t6 = 0
    static var flag = false
    
    static func calcType()->Int {
        var imax = 1
        var maxt = t1
        if maxt < t2
        {
            maxt = t2
            imax = 2
        }
        if maxt < t3
        {
            maxt = t3
            imax = 3
        }
        if maxt < t4
        {
            maxt = t4
            imax = 4
        }
        if maxt < t5
        {
            maxt = t5
            imax = 5
        }
        if maxt < t6
        {
            maxt = t6
            imax = 6
        }
        return imax
    }
    
    static func foo(proof: Bool, inout ts1: Int) {
        if proof {
            ++ts1
        }
        else {
            --ts1
        }
    }
    
    
    static func foo(proof: Bool, inout ts1: Int, inout ts2: Int) {
        if proof {
            ++ts1
            ++ts2
        }
        else {
            --ts1
            --ts2
        }
    }
    
    static func foo(proof: Bool, inout ts1: Int, inout ts2: Int, inout ts3: Int) {
        if proof {
            ++ts1
            ++ts2
            ++ts3
        }
        else {
            --ts1
            --ts2
            --ts3
        }
    }
    
    static func foo(proof: Bool, inout ts1: Int, inout ts2: Int, inout ts3: Int, inout ts4: Int) {
        if proof {
            ++ts1
            ++ts2
            ++ts3
            ++ts4
        }
        else {
            --ts1
            --ts2
            --ts3
            --ts4
        }
    }
}
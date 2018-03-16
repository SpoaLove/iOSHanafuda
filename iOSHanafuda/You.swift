//
//  You.swift
//  iOSHanafuda
//
//  Created by Tengoku no Spoa on 2018/3/16.
//  Copyright © 2018年 Tengoku no Spoa. All rights reserved.
//

import Foundation

class You: Player {
    
    var name: String = "You"
    
    var haveCards: Set<Card> = []
    
    var gotCards: Set<Card> = []
    
    var flags = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    var koikoi = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    init(cards:Set<Card>) {
        haveCards = cards
    }
    
}

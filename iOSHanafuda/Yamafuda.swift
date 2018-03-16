//
//  Yamafuda.swift
//  iOSHanafuda
//
//  Created by Tengoku no Spoa on 2018/3/16.
//  Copyright © 2018年 Tengoku no Spoa. All rights reserved.
//

import Foundation

public class Yamafuda {
    
    /**
     * This is an array of Cards representing the Yamafuda of the game
     */
    var cards:Set<Card> = []
    
    init() {
        var c = [
            // January
            Card(hashValue: 101, month: 1,name: "01_tsuru",yaku: [1, 0, 0, 0, 0, 0, 0, 0, 0]),
            Card(hashValue: 102, month: 1,name: "01_akatan",yaku: [0, 0, 0, 0, 1, 0, 1, 0, 0]),
            Card(hashValue: 103, month: 1,name: "01_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 104, month: 1,name: "01_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // February
            Card(hashValue: 201, month: 2,name: "02_uguisu",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(hashValue: 202, month: 2,name: "02_akatan",yaku: [0, 0, 0, 0, 1, 0, 1, 0, 0]),
            Card(hashValue: 203, month: 2,name: "02_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 204, month: 2,name: "02_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // March
            Card(hashValue: 301, month: 3,name: "03_maku",yaku: [1, 1, 0, 0, 0, 0, 0, 0, 0]),
            Card(hashValue: 302, month: 3,name: "01_akatan",yaku: [0, 0, 0, 0, 1, 0, 1, 0, 0]),
            Card(hashValue: 303, month: 3,name: "03_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 304, month: 3,name: "03_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // April
            Card(hashValue: 401, month: 4,name: "04_hototogisu",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(hashValue: 402, month: 4,name: "04_tan",yaku: [0, 0, 0, 0, 0, 0, 1, 0, 0]),
            Card(hashValue: 403, month: 4,name: "04_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 404, month: 4,name: "04_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // May
            Card(hashValue: 501, month: 5,name: "05_yatsuhashi",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(hashValue: 502, month: 5,name: "05_tan",yaku: [0, 0, 0, 0, 0, 0, 1, 0, 0]),
            Card(hashValue: 503, month: 5,name: "05_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 504, month: 5,name: "05_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // June
            Card(hashValue: 601, month: 6,name: "06_cho",yaku: [0, 0, 0, 1, 0, 0, 0, 1, 0]),
            Card(hashValue: 602, month: 6,name: "06_aotan",yaku: [0, 0, 0, 0, 0, 1, 1, 0, 0]),
            Card(hashValue: 603, month: 6,name: "06_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 604, month: 6,name: "06_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // July
            Card(hashValue: 701, month: 7,name: "07_inoshishi",yaku: [0, 0, 0, 1, 0, 0, 0, 1, 0]),
            Card(hashValue: 702, month: 7,name: "07_tan",yaku: [0, 0, 0, 0, 0, 0, 1, 0, 0]),
            Card(hashValue: 703, month: 7,name: "07_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 704, month: 7,name: "07_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // August
            Card(hashValue: 801, month: 8,name: "08_tsuki",yaku: [1, 0, 1, 0, 0, 0, 0, 0, 0]),
            Card(hashValue: 802, month: 8,name: "08_gan",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(hashValue: 803, month: 8,name: "08_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 804, month: 8,name: "0_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // September
            Card(hashValue: 901, month: 9,name: "09_sakazuki",yaku: [0, 1, 1, 0, 0, 0, 0, 1, 1]),
            Card(hashValue: 902, month: 9,name: "09_aotan",yaku: [0, 0, 0, 0, 0, 1, 1, 0, 0]),
            Card(hashValue: 903, month: 9,name: "09_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 904, month: 9,name: "09_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // October
            Card(hashValue: 1001, month: 10,name: "10_shika",yaku: [0, 0, 0, 1, 0, 0, 0, 1, 0]),
            Card(hashValue: 1002, month: 10,name: "10_aotan",yaku: [0, 0, 0, 0, 0, 1, 1, 0, 0]),
            Card(hashValue: 1003, month: 10,name: "10_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 1004, month: 10,name: "10_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // November
            Card(hashValue: 1101, month: 11,name: "11_ame",yaku: [-5, -1, -1, 0, 0, 0, 0, 0, 0]),
            Card(hashValue: 1102, month: 11,name: "11_tsubame",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(hashValue: 1103, month: 11,name: "11_tan",yaku: [0, 0, 0, 0, 0, 0, 1, 0, 0]),
            Card(hashValue: 1104, month: 11,name: "11_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // December
            Card(hashValue: 1201, month: 12,name: "12_houou",yaku: [1, 0, 0, 0, 0, 0, 0, 0, 0]),
            Card(hashValue: 1202, month: 12,name: "12_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 1203, month: 12,name: "12_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(hashValue: 1204, month: 12,name: "12_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1])
        ]
        
        // add cards shuffled
        while(c.count>0) {
            let randomIndex = Int(arc4random_uniform(UInt32(c.count)))
            cards.insert(c.remove(at: randomIndex))
        }
    }
    
    /**
     * This card returns the card from the top of the deck
     * @ return a Card from the top of the deck
     */
    func drawCard() -> Card{
         return cards.popFirst()!
    }
    
    /**
     * This card returns an input amount of cards from the top of the deck
     *
     * @args the number of Cards that will be drawn from the deck
     * @return an set of Cards from the top of the deck
     */
    func drawCards(num:Int) -> Set<Card> {
        
        var temp:Set<Card> = []
        for _ in 0..<num {
            temp.insert(cards.popFirst()!)
        }
        return temp
    }
    
}

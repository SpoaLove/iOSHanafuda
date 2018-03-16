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
    var cards:[Card] = []
    
    init() {
        var c = [
            // January
            Card(month: 1,name: "01_tsuru",yaku: [1, 0, 0, 0, 0, 0, 0, 0, 0]),
            Card(month: 1,name: "01_akatan",yaku: [0, 0, 0, 0, 1, 0, 1, 0, 0]),
            Card(month: 1,name: "01_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 1,name: "01_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // February
            Card(month: 2,name: "02_uguisu",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(month: 2,name: "02_akatan",yaku: [0, 0, 0, 0, 1, 0, 1, 0, 0]),
            Card(month: 2,name: "02_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 2,name: "02_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // March
            Card(month: 3,name: "03_maku",yaku: [1, 1, 0, 0, 0, 0, 0, 0, 0]),
            Card(month: 3,name: "01_akatan",yaku: [0, 0, 0, 0, 1, 0, 1, 0, 0]),
            Card(month: 3,name: "03_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 3,name: "03_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // April
            Card(month: 4,name: "04_hototogisu",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(month: 4,name: "04_tan",yaku: [0, 0, 0, 0, 0, 0, 1, 0, 0]),
            Card(month: 4,name: "04_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 4,name: "04_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // May
            Card(month: 5,name: "05_yatsuhashi",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(month: 5,name: "05_tan",yaku: [0, 0, 0, 0, 0, 0, 1, 0, 0]),
            Card(month: 5,name: "05_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 5,name: "05_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // June
            Card(month: 6,name: "06_cho",yaku: [0, 0, 0, 1, 0, 0, 0, 1, 0]),
            Card(month: 6,name: "06_aotan",yaku: [0, 0, 0, 0, 0, 1, 1, 0, 0]),
            Card(month: 6,name: "06_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 6,name: "06_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // July
            Card(month: 7,name: "07_inoshishi",yaku: [0, 0, 0, 1, 0, 0, 0, 1, 0]),
            Card(month: 7,name: "07_tan",yaku: [0, 0, 0, 0, 0, 0, 1, 0, 0]),
            Card(month: 7,name: "07_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 7,name: "07_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // August
            Card(month: 8,name: "08_tsuki",yaku: [1, 0, 1, 0, 0, 0, 0, 0, 0]),
            Card(month: 8,name: "08_gan",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(month: 8,name: "08_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 8,name: "0_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // September
            Card(month: 9,name: "09_sakazuki",yaku: [0, 1, 1, 0, 0, 0, 0, 1, 1]),
            Card(month: 9,name: "09_aotan",yaku: [0, 0, 0, 0, 0, 1, 1, 0, 0]),
            Card(month: 9,name: "09_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 9,name: "09_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // October
            Card(month: 10,name: "10_shika",yaku: [0, 0, 0, 1, 0, 0, 0, 1, 0]),
            Card(month: 10,name: "10_aotan",yaku: [0, 0, 0, 0, 0, 1, 1, 0, 0]),
            Card(month: 10,name: "10_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 10,name: "10_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // November
            Card(month: 11,name: "11_ame",yaku: [-5, -1, -1, 0, 0, 0, 0, 0, 0]),
            Card(month: 11,name: "11_tsubame",yaku: [0, 0, 0, 0, 0, 0, 0, 1, 0]),
            Card(month: 11,name: "11_tan",yaku: [0, 0, 0, 0, 0, 0, 1, 0, 0]),
            Card(month: 11,name: "11_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            // December
            Card(month: 12,name: "12_houou",yaku: [1, 0, 0, 0, 0, 0, 0, 0, 0]),
            Card(month: 12,name: "12_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 12,name: "12_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1]),
            Card(month: 12,name: "12_kasu",yaku: [0, 0, 0, 0, 0, 0, 0, 0, 1])
        ]
        
        // add cards shuffled
        while(c.count>0) {
            let randomIndex = Int(arc4random_uniform(UInt32(c.count)))
            cards.append(c.remove(at: randomIndex))
        }
    }
    
    /**
     * This card returns the card from the top of the deck
     * @ return a Card from the top of the deck
     */
    func drawCard() -> Card{
         return cards.removeLast()
    }
    
    /**
     * This card returns an input amount of cards from the top of the deck
     *
     * @args the number of Cards that will be drawn from the deck
     * @return an array of Cards from the top of the deck
     */
    func drawCards(num:Int) -> [Card] {
        var temp:[Card] = []
        for _ in 0..<num {
            temp.append(cards.removeLast())
        }
        return temp
    }
    
}

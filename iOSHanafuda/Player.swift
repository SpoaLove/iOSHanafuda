//
//  Player.swift
//  iOSHanafuda
//
//  Created by Tengoku no Spoa on 2018/3/16.
//  Copyright © 2018年 Tengoku no Spoa. All rights reserved.
//

import Foundation

protocol Player {
    var name:String { get set }
    var haveCards:Set<Card> { get set }
    var gotCards:Set<Card> { get set }
    var flags:[Int] { get set }
    var koikoi:[Int] { get set }
}

extension Player {
    
    mutating func removeCard(c:Card) {
        if haveCards.contains(c) {
            haveCards.remove(c)
        }
    }
    
    mutating func addPair(fst:Card, snd:Card) {
        gotCards.insert(fst)
        gotCards.insert(snd)
        for i in 0..<9 {
            flags[i] += fst.yaku[i] + snd.yaku[i]
        }
    }
    
    mutating func canFinish() -> Bool {
        var finish = false
        
        if flags[0] == 3 && koikoi[0] == 0 {
            // Sanko
            koikoi[0] += 1
            finish = true
        }
        if flags[0] == 4 && koikoi[0] == 1 {
            // Shikou
            koikoi[0] += 1
            finish = true
        }
        if flags[0] == -2 && koikoi[0] == 0 || flags[0] == -2 && koikoi[0] == 1 {
            // Amesshikou
            koikoi[0] += 1
            finish = true
        }
        if flags[1] == 2 {
            // Hanamizake
            koikoi[1] += 1
            flags[1] = 0
            finish = true
        }
        if flags[2] == 2 {
            // Tsukimizake
            koikoi[2] += 1
            flags[2] = 0
            finish = true
        }
        if flags[3] == 3 {
            // Inoshikacho
            koikoi[3] += 1
            flags[3] = 0
            finish = true
        }
        if flags[4] == 3 {
            // Akatan
            koikoi[4] += 1
            flags[4] = 0
            finish = true
        }
        if flags[5] == 3 {
            // Aotan
            koikoi[5] += 1
            flags[5] = 0
            finish = true
        }
        if (flags[6] >= 5) {
            // Tan
            koikoi[6] += flags[6] - 4
            flags[6] = 4
            finish = true
        }
        if (flags[7] >= 5) {
            // Tane
            koikoi[7] += flags[7] - 4
            flags[7] = 4
            finish = true
        }
        if (flags[8] >= 10) {
            // Kasu
            koikoi[8] += flags[8] - 9
            flags[8] = 9
            finish = true
        }
        return finish
    }
    
}

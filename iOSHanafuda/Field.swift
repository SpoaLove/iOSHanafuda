//
//  Field.swift
//  iOSHanafuda
//
//  Created by Tengoku no Spoa on 2018/3/16.
//  Copyright © 2018年 Tengoku no Spoa. All rights reserved.
//

import Foundation

public class Field {
    private var cards:Set<Card> = []
    
    init(cards:Set<Card>) {
        self.cards = cards
    }
    
    public func addCard(c:Card) {
        cards.insert(c)
    }
    
    public func removeCard(c:Card) {
        cards.remove(c)
    }
    
    public func getCardList() -> Set<Card> {
        return cards
    }

}

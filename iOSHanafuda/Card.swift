//
//  Card.swift
//  iOSHanafuda
//
//  Created by Tengoku no Spoa on 2018/3/16.
//  Copyright © 2018年 Tengoku no Spoa. All rights reserved.
//

import Foundation

/**
 * This is a struct of a single card
 *
 * @property month an Interger identifying the month of the card
 * @property name a String indentifying the name of the card
 * @property yaku an array of interger identifying the points of the card
 */
public struct Card {
    let month:Int
    let name:String
    let yaku:[Int]
}

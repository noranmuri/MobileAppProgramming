//
//  Challenge.swift
//  challenge
//
//  Created by myeong on 2021/05/19.
//

import Foundation

//시스템 챌린지
struct Challenge:Identifiable{
    var id = UUID().uuidString
    var title: String
}

//유저용 챌린지
struct UserChallenge:Identifiable{
    var id = UUID().uuidString
    var title: String
    var done: Bool = false
    var begin: DateComponents
    var end: DateComponents
    var alarm: timeb
}


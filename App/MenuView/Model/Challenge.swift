//
//  Challenge.swift
//  challenge
//
//  Created by myeong on 2021/05/19.
//

import Foundation

struct Challenge:Identifiable{
    var id = UUID().uuidString
    var title: String
//    var content: String
//    var img: URL
//    var done: Bool = false
//    var begin: DateComponents
//    var end: DateComponents
    var isFavorite: Bool = false
//    var alarm: timeb
}

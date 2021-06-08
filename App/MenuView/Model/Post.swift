//
//  Post.swift
//  App
//
//  Created by thingzoo on 2021/06/08.
//

import Foundation

struct Post {
    var content: String = ""
    var img = URL(string: "")
    var date: String {
        get {
            let day = Date()
            let format = DateFormatter()
            format.dateFormat = "yyyy-MM-dd HH:mm:ss"
            let formattedDate = format.string(from: day)
            return formattedDate
        }
    }
    
}

//
//  User.swift
//  App
//
//  Created by thingzoo on 2021/06/08.
//

import Foundation

struct User {
    var id = UUID().uuidString
    var challengeList = [UserChallenge]()
    var post = [Post]()
}

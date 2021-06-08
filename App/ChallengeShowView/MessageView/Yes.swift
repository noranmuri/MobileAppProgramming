//
//  Yes.swift
//  App
//
//  Created by thingzoo on 2021/06/08.
//

import SwiftUI

struct YesView: View {
    var post = Post()
    @State var content = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("내용을 입력하세요", text: $content)
                
            }
        }
    }
}

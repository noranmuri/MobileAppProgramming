//
//  Button.swift
//  page
//
//  Created by ggamangmuri on 2021/05/25.
//

import SwiftUI

struct envelopeButton: View{
    @State var isClicked = false
    var body: some View{
        NavigationLink(destination: MessageView(), isActive:$isClicked){
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray)
                    .frame(width: 200, height:150)
                Button(action:{isClicked=true}){
                    Image(systemName: "heart.fill")
                        .font(.system(size:80))
                        .foregroundColor(Color.pink)
                }
            }
        }
    }
}

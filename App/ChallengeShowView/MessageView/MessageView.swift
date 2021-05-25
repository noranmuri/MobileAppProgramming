//
//  MessageView.swift
//  page
//
//  Created by ggamangmuri on 2021/05/25.
//

import SwiftUI

struct MessageView: View{
    var isClick: Bool = false
    @State private var noActive = false
    @State private var yesActive = false
    
    var body: some View{
        NavigationView{
        ZStack{
            RoundedRectangle(cornerRadius: 10).fill(Color.white)
            //RoundedRectangle(cornerRadius: 10).stroke().padding() // 테두리
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black)
                .frame(width:350, height: 350)
            NavigationLink(destination: Text("no page"), isActive : $noActive){}
            NavigationLink(destination: Text("yes page"), isActive : $yesActive){}
            VStack{
                Text("챌린지 내용")
                    .font(Font.largeTitle)
                    .padding(15)

                HStack(content: {
                    Button(action:{
                        noActive = true
                    }){
                        Text("No")
                            .frame(width: 150, height: 70)
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    Button(action:{
                        self.yesActive = true
                    }){
                        Text("Yes")
                            .frame(width: 150, height: 70)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                })//HStack
                .foregroundColor(Color.white)
                
            }//VStack
        }
        }
        .navigationBarHidden(true)
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}

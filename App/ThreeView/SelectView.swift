//
//  SelectView.swift
//  App
//
//  Created by ggamangmuri on 2021/05/26.
//

import SwiftUI
struct selectButton: View{
    private var str: String
    init(str: String){
        self.str = str
    }
    var body: some View{
        Text("\(str)")
            .frame(width: 250, height: 100)
            .background(Color.green)
            .cornerRadius(10.0)
            .foregroundColor(.white)
            .font(.largeTitle)
            .padding()
    }
}

struct SelectView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: Text("캘린더확인페이지")){
                    selectButton(str: "캘린더")}
                NavigationLink(
                    destination: EnvelopeView()
                ){selectButton(str: "챌린지")}
                NavigationLink(destination: MenuView()){
                    selectButton(str: "메뉴")}
            }
            .navigationBarHidden(true)
        }
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView()
    }
}

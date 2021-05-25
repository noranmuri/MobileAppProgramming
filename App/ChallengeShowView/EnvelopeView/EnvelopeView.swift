//
//  EnvelopeView.swift
//  page
//
//  Created by ggamangmuri on 2021/05/25.
//

import SwiftUI



struct EnvelopeView: View {
    var body: some View{
        NavigationView{
            VStack{
                Text("오늘의 챌린지가 도착했습니다 !\n\n")
                envelopeButton()
            }
        }
    }
}


struct EnvelopeView_Previews: PreviewProvider {
    static var previews: some View {
        EnvelopeView()
    }
}

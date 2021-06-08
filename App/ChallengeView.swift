//
//  ChallengeView.swift
//  App
//
//  Created by thingzoo on 2021/05/26.
//

import SwiftUI
struct ChallengeView: View {
    
    @ObservedObject private var viewModel = ChallengeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.challenges) { challenge in
                VStack(alignment: .leading) {
                    Text(challenge.title).font(.title)
                }
            }.navigationBarTitle("Challenges")
            .onAppear() {
                self.viewModel.fetchData()
            }
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}

//
//  ChallengeViewModel.swift
//  App
//
//  Created by thingzoo on 2021/05/26.
//

import Foundation
import FirebaseFirestore

class ChallengeViewModel: ObservableObject {
    
    @Published var challenges = [Challenge]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("Challenge").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.challenges = documents.map { (queryDocumentSnapshot) -> Challenge in
                let data = queryDocumentSnapshot.data()
                //
                let title = data["title"] as? String ?? ""
                
                return Challenge(title: title)
            }
        }
    }
}

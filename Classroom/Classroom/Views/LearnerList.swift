//
//  ContentView.swift
//  Classroom
//
//  Created by Stefania Zinno 
//

import SwiftUI

struct LearnerList: View {
    
    @StateObject var learnerStore = LearnerStore()
    
    var body: some View {
        NavigationView{
            List {
                ForEach(learnerStore.learners) { learner in
                    NavigationLink(destination: PresentMeView(learner: learner )) {
                        HStack {
                            Image(learner.imageName)
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("\(learner.name) \(learner.surname)")
                            Spacer()
                        }
                    }
                }
            }.navigationTitle("Learners")
        }.navigationViewStyle(.stack)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LearnerList()
    }
}

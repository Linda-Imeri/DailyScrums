//
//  ScrumsView.swift
//  DailyScrums
//
//  Created by Linda Imeri on 15.10.22.
//

import SwiftUI
struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List{
            ForEach (scrums) {
                scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar{
            Button(action: {}){
                Image(systemName: "plus")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}

//
//  ContentView.swift
//  DailyScrums
//
//  Created by Linda Imeri on 11.10.22.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack{
            ProgressView(value: 3, total: 20)
            HStack{
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("500",systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600",systemImage:  "hourglass.tophalf.fill")
                }
            }
            ZStack{
                Circle().strokeBorder(lineWidth: 24)
                Text("CHELLA is speaking").foregroundColor(Color.black)
            }
            HStack{
                Text("Speaker 2 of 10")
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "forward.fill")
                })
            }
        }
        //.background(Color.pink)
            .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}

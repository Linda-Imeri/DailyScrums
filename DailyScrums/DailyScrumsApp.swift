//
//  DailyScrumsApp.swift
//  DailyScrums
//
//  Created by Linda Imeri on 11.10.22.
//

import SwiftUI

@main
struct DailyScrumsApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)}
    }
}

//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Tes on 11/07/2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}

//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Tes on 11/07/2022.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $store.scrums)
            }
            .onAppear{
                ScrumStore.load { result in
                    
                }
            }
        }
    }
}

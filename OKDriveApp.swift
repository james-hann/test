/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

@main
struct OKDriveApp: App {
    @State private var history = History()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List {
                    NavigationLink(destination: MicView(history: $history)) {
                        Label("Start Recording", systemImage: "timer")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                    }
                    NavigationLink(destination: HistoryView(history: $history)) {
                        Label("History", systemImage: "book")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
    }
}

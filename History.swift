/*
See LICENSE folder for this sample’s licensing information.
*/

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    var theme: Theme = .orange
    var history: [Recording] = []
    
    init(id: UUID = UUID()) {
        self.id = id
    }
}

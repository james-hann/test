/*
See LICENSE folder for this sample’s licensing information.
*/

import Foundation

struct Recording: Identifiable, Codable {
    let id: UUID
    let date: Date
    var transcript: String?

    init(id: UUID = UUID(), date: Date = Date(), transcript: String? = nil) {
        self.id = id
        self.date = date
        self.transcript = transcript
    }
}

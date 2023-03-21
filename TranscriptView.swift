/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct TranscriptView: View {
    let recording: Recording
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Divider()
                    .padding(.bottom)
                if let transcript = recording.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(recording.date, style: .date))
        .padding()
    }
}

//struct HistoryView_Previews: PreviewProvider {
//    static var history: History {
//        History(attendees: [DailyScrum.Attendee(name: "Jon"), DailyScrum.Attendee(name: "Darla"), DailyScrum.Attendee(name: "Luis")], lengthInMinutes: 10, transcript: "Darla, would you like to start today? Sure, yesterday I reviewed Luis' PR and met with the design team to finalize the UI...")
//    }
    
//    static var previews: some View {
//        HistoryView(history: history)
//    }


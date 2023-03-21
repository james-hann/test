/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct HistoryView: View {
    @Binding var history: History
    
    @State private var isPresentingEditView = false
    
    var body: some View {
        List {
            Section(header: Text("History")) {
                if history.history.isEmpty {
                    Label("No meetings yet", systemImage: "calendar.badge.exclamationmark")
                }
                ForEach(history.history) { recording in
                    NavigationLink(destination: TranscriptView(recording: recording)) {
                        HStack {
                            Image(systemName: "calendar")
                            Text(recording.date, style: .date)
                        }
                    }
                }
            }
        }
        
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            DetailView(scrum: .constant(DailyScrum.sampleData[0]))
//        }
//    }
//}

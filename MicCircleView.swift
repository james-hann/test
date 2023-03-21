/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct MicCircleView: View {
    let isRecording: Bool
    let theme: Theme = .lavender
    
    var body: some View {
        Circle()
            .strokeBorder(lineWidth: 24)
            .overlay {
                VStack {
                    Image(systemName: isRecording ? "mic" : "mic.slash")
                        .font(.system(size: 100))
                        .accessibilityLabel(isRecording ? "with transcription" : "without transcription")
                }
                .accessibilityElement(children: .combine)
                .foregroundStyle(theme.accentColor)
            }
            
            .padding(.horizontal)
            .padding(.bottom, 100)
    }
}

//struct MeetingTimerView_Previews: PreviewProvider {
//    static var speakers: [ScrumTimer.Speaker] {
//        [ScrumTimer.Speaker(name: "Kim", isCompleted: true), ScrumTimer.Speaker(name: "Bill", isCompleted: false)]
//    }
    
//    static var previews: some View {
//        MeetingTimerView(speakers: speakers, isRecording: true, theme: .yellow)
//    }


/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI
import AVFoundation

struct MicView: View {
    @Binding var history: History
    @StateObject var speechRecognizer = SpeechRecognizer()
    @State private var isRecording = false
    private var player: AVPlayer { AVPlayer.sharedDingPlayer }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .fill(.red)
            VStack {
                MicHeaderView()
                MicCircleView(isRecording: isRecording)
//                MeetingFooterView()
            }
        }
        .padding()
        .foregroundColor(.blue)
        .onAppear {
            speechRecognizer.reset()
            speechRecognizer.transcribe()
            isRecording = true
        }
        .onDisappear {
            speechRecognizer.stopTranscribing()
            isRecording = false
            let newRecording = Recording(transcript: speechRecognizer.transcript)
            history.history.insert(newRecording, at: 0)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct MeetingView_Previews: PreviewProvider {
//    static var previews: some View {
//        MeetingView(scrum: .constant(DailyScrum.sampleData[0]))
//    }
//}

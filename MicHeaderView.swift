/*
See LICENSE folder for this sample’s licensing information.
*/

import SwiftUI

struct MicHeaderView: View {
    
    var body: some View {
        VStack {
              Text("Include:")
                .font(.title)
              Text("License Plate #")
                .font(.title2)
              Text("Nature of Incident")
                .font(.title2)
        }
        .accessibilityElement(children: .ignore)
        .padding([.top, .horizontal])
    }
}

//struct MeetingHeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        MeetingHeaderView(secondsElapsed: 60, secondsRemaining: 180, theme: .bubblegum)
//            .previewLayout(.sizeThatFits)
//    }
//}

//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by Tes on 04/01/2023.
//

import SwiftUI

struct MeetingFooterView: View {
    let speakers: [ScrumTimer.Speaker]
    var skipAction: () -> Void
    private var speakerNumer: Int? {
        guard let index = speakers.firstIndex(where: { !$0.isCompleted }) else { return nil }
        return index + 1
    }
    private var isLastSpeaker: Bool {
        return speakers.dropLast().allSatisfy{ $0.isCompleted }
    }
    private var speakerText: String {
        guard let speakerNumer = speakerNumer else { return "No more speakers"}
        return "Speaker \(speakerNumer) of \(speakers.count)"
    }
    var body: some View {
        HStack {
            Text (speakerText)
            Spacer()
            Button(action: {}){
                Image(systemName: "forward.fill")
            }
            .accessibilityLabel("Next speaker")
        }
    }
}

struct MeetingFooterView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingFooterView(speakers: DailyScrum.sampleData[0].attendees.speakers, skipAction: {})
            .previewLayout(.sizeThatFits)
    }
}

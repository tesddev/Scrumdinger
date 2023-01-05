//
//  History.swift
//  Scrumdinger
//
//  Created by Tes on 05/01/2023.
//

import SwiftUI

struct History: Identifiable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    var lengthInMinutes: Int
}

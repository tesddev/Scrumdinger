//
//  ErrorWrapper.swift
//  Scrumdinger
//
//  Created by Tes on 21/01/2023.
//

import Foundation

struct ErrorWrapper: Identifiable {
    let id: UUID
    let error: Error
    let guidance: String
}

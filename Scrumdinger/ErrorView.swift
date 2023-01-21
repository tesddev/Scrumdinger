//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Tes on 21/01/2023.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    
    var body: some View {
        VStack {
            Text("An error has occurred!")
                .font(.title)
                .padding(.bottom)
            Spacer()
        }
        .padding()
        
    }
}

struct ErrorView_Previews: PreviewProvider {
    enum SampleError: Error {
        case errorRequired
    }
    static var wrapper: ErrorWrapper {
        ErrorWrapper(error: SampleError.errorRequired, guidance: "You can safely ignore this error.")
    }
    static var previews: some View {
        ErrorView(errorWrapper: wrapper)
    }
}

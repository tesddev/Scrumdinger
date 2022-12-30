//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Tes on 28/12/2022.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    var body: some View {
        Picker("Theme", selection: $selection) {
            
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.periwinkle))
    }
}

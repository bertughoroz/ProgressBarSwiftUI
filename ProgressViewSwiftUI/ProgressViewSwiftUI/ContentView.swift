//
//  ContentView.swift
//  ProgressViewSwiftUI
//
//  Created by Bertuğ Horoz on 13.12.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var progress = 0.0
    // MARK: - BODY
    var body: some View {
        VStack {
            Form {
                Stepper("Progress", value: $progress, in: 0.0 ... 1.0, step: 0.1)
                ProgressView(value: progress)
            }
        }
        .padding()
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

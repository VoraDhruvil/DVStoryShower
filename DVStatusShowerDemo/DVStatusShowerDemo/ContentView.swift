//
//  ContentView.swift
//  DVStatusShowerDemo
//
//  Created by Dhruvil Vora on 19/12/23.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

@available(iOS 15.0, *)
#Preview {
    ContentView()
}

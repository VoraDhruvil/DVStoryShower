//
//  DVStatusShowerDemoApp.swift
//  DVStatusShowerDemo
//
//  Created by Dhruvil Vora on 19/12/23.
//

import SwiftUI
import DVStoryShower

@main
struct DVStatusShowerDemoApp: App {
    var body: some Scene {
        WindowGroup {
            DVStoryShower(numberOfStories: 10)
        }
    }
}

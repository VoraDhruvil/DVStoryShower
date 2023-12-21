// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftUI

public struct DVStoryShower: View {

    public init() {}

    public var body: some View {
        VStack(content: {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<10) {_ in
                        ProfileCircularImage(nummberOfStories: 1)
                    }
                    .padding(50)
    //                .background(.green)
                }
    //            .background(.red)
                .padding([.horizontal], 10)
            }
//            .padding([.horizontal], 10)
//            .background(.blue)
        })
    }
}

#Preview {
    DVStoryShower()
}

// The Swift Programming Language
// https://docs.swift.org/swift-book


import SwiftUI

public struct DVStoryShower: View {

    private var totalStories: Int = 0

    public init(numberOfStories: Int) {
        totalStories = numberOfStories
    }

    public var body: some View {
        VStack(content: {
            ScrollView(.horizontal) {
                HStack(spacing: 10) {
                    ForEach(0..<10) {_ in
                        ProfileCircularImage(nummberOfStories: totalStories)
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
    DVStoryShower(numberOfStories: 10)
}

//
//  ProfileCircularImage.swift
//
//
//  Created by Dhruvil Vora on 20/12/23.
//

import SwiftUI

struct ProfileCircularImage: View {

    let radius: CGFloat = 100
    let pi = Double.pi
    var lineLength: CGFloat
    var spaceLength: CGFloat = 4
    let storiesCount: CGFloat

    private let gradient = AngularGradient(
        gradient: Gradient(colors: [.green, .yellow]),
        center: .center,
        startAngle: .degrees(0),
        endAngle: .degrees(360))

    init(nummberOfStories: Int) {
        storiesCount = CGFloat(nummberOfStories)
        spaceLength = nummberOfStories > 1 ? 4 : 0
        let circumference: CGFloat = CGFloat(pi) * radius
        lineLength = (circumference / CGFloat(storiesCount)) - spaceLength
    }

    var body: some View {
        VStack {
            GeometryReader(content: { geo in
                VStack(alignment: .center) {
                    Circle()
                        .stroke(gradient, style: StrokeStyle(lineWidth: 8, lineCap: .butt, dash: [lineLength, spaceLength]))
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .center)
                        .overlay {
                            Image(uiImage: UIImage(moduleImage: "tigerrock")!)
                                .resizable()
                                .clipShape(Circle())
                                .shadow(radius: 7)
                                .overlay {
                                    Circle().stroke(.white, lineWidth: 2)
                                }
                        }
                }
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            })
        }
    }
}

#Preview {
    ProfileCircularImage(nummberOfStories: 1)
}

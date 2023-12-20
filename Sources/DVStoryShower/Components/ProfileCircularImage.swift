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
    let dotCount = 30
    let dotLength: CGFloat
    let spaceLength: CGFloat = 4
    let storiesCount: CGFloat = 10

    init() {
        let circumerence: CGFloat = CGFloat(2.0 * pi) * radius
        dotLength = circumerence / CGFloat(storiesCount*2) - spaceLength
    }

    var body: some View {
        VStack {
            GeometryReader(content: { geo in
                VStack(alignment: .center) {
                    Circle()
                        .stroke(.red, style: StrokeStyle(lineWidth: 8, lineCap: .butt, lineJoin: .miter, miterLimit: 0, dash: [dotLength, spaceLength], dashPhase: 0))
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
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
    ProfileCircularImage()
}

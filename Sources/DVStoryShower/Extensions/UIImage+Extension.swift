//
//  UIImage+Extension.swift
//
//
//  Created by Dhruvil Vora on 20/12/23.
//

import SwiftUI

extension UIImage {
    public convenience init?(moduleImage: String) {
        self.init(named: moduleImage, in: .module, with: nil)
    }
}

//
//  CustomModifiers.swift
//  DubDubGrub
//
//  Created by Bob Coleman on 3/3/23.
//

import SwiftUI

struct ProfileNameText: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
            .autocorrectionDisabled()
    }
}

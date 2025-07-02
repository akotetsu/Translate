//
//  Setting01.swift
//  TranslateApp
//
//  Created by 原里駆 on 2025/07/02.
//

import SwiftUI

struct Setting01: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25, weight: .bold))
            .foregroundStyle(Color.indigo)
    }
}


//
//  ButtonCustom.swift
//  TranslateApp
//
//  Created by 原里駆 on 2025/07/03.
//

import SwiftUI

struct ButtonCustom: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .bold()
            .padding(.vertical, 20)
            .padding(.horizontal, 35)
            .background(Color(.systemMint))
            .foregroundStyle(Color.black.opacity(0.7))
            .clipShape(RoundedRectangle(cornerRadius: 10))

    }
}

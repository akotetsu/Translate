//
//  ResultView.swift
//  TranslateApp
//
//  Created by 原里駆 on 2025/07/01.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            VStack {
                Text("ここは翻訳された結果を返す画面です。")
            }
        }
    }
}

#Preview {
    ResultView()
}

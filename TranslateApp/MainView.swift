//
//  MainView.swift
//  TranslateApp
//
//  Created by 原里駆 on 2025/07/01.
//

import SwiftUI

struct MainView: View {
    @State private var promptText = ""
    
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            VStack {
                Text("Original Text")
                    .font(.title)
                
                
                TextEditor(text: $promptText)
                    .padding()
                    .frame(width: .infinity, height: 400)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                //.padding(.horizontal)
                
                Button {
                    print("翻訳する")
                } label: {
                    Text("Translate")
                        .font(.headline)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 32)
                        .background(Color(.systemMint))
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding()
        }
    }
}

#Preview {
    MainView()
}

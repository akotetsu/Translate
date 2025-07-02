//
//  SettingView.swift
//  TranslateApp
//
//  Created by 原里駆 on 2025/07/01.

import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.background
                .ignoresSafeArea()
            
            VStack {
                // ここに設定画面の中身を書く
            }
            .padding()
            
            // 左上の戻るボタン
            Button(action: {
                dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.black)
                    .padding(12)
                    .background(Color(.systemGray5))
                    .clipShape(Circle())
                    .shadow(radius: 1)
            })
            .padding(.top, 16)
            .padding(.leading, 16)
        }
    }
}

#Preview {
    SettingView()
}

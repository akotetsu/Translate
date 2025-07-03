//
//  MainView.swift
//  TranslateApp
//
//  Created by 原里駆 on 2025/07/01.
//

import SwiftUI

struct MainView: View {
    @State private var promptText = ""
    @State private var isSettingView = false
    @State private var navigateToResult = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .topTrailing) {
                
                Color.background
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                        .frame(height: 70)
                    
                    Text("Original Text")
                        .font(.title)
                    
                    Spacer()
                        .frame(height: 25)
                    
                    Text("自然言語で入力してみてください〜")
                        .font(.subheadline)
                        .foregroundStyle(Color.gray)
                    
                    Spacer()
                        .frame(height: 15)
                    
                    TextEditor(text: $promptText)
                        .padding()
                        .frame(height: 400)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    //.padding(.horizontal)
                    
                    Spacer()
                        .frame(height: 80)
                    
                    Button(action: {
                        navigateToResult = true
                    }) {
                        Text("Translate")
                            .modifier(ButtonCustom())
                    }
                    .navigationDestination(isPresented: $navigateToResult) {
                        ResultView()
                    }
                }
                .padding()
                
                HStack {
                    Button {
                        isSettingView.toggle()
                    } label: {
                        Image(systemName: "gearshape")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                            .foregroundColor(.black)
                    }
                }
            }
        }
        .sheet(isPresented: $isSettingView) {
            SettingView()
        }
    }
}

#Preview {
    MainView()
}

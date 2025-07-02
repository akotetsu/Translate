import SwiftUI

struct SettingView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var situation = ""
    @FocusState private var isSituationTextFieldFocused: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.background
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
                // "Settings"を画面中央のトップに表示
                Text("Settings")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .center)
                
                Spacer()
                    .frame(height: 70)
                
                VStack {
                    Text("From")
                        .modifier(Setting01())
                    
                    Spacer()
                        .frame(height: 10)
                    
                    Text("English")
                        .font(.system(size: 50))
                    
                    //ここは将来的にいくつかの言語で設定できるように
                    
                    Spacer()
                        .frame(height: 25)
                    
                    Image(systemName: "chevron.down")
                    Image(systemName: "chevron.down").opacity(0.66)
                    Image(systemName: "chevron.down").opacity(0.33)
                    
                    Spacer()
                        .frame(height: 25)
                    
                    Text("To")
                        .modifier(Setting01())
                    
                    Text("Japanese")
                        .font(.system(size: 50))
                }
                
                Divider()
                    .frame(height: 4)
                    .background(Color.black)
                
                VStack {
                    Text("Situation")
                        .modifier(Setting01())
                    
                    Spacer()
                        .frame(height: 25)
                    
                    HStack() {
                        Spacer()
                            .frame(width: 30)
                        Text("At  ")
                            .modifier(Setting02())
                        
                        TextField("ex) Restaurant", text: $situation)
                            .padding(.bottom, 5) // 下部に少しパディング
                            .overlay( // 下線を追加
                                VStack {
                                    Spacer()
                                    Rectangle()
                                        .frame(height: 1) // 線の太さ
                                        .foregroundColor(.black) // 線の色
                                }
                            )
                            .keyboardType(.default)
                            .focused($isSituationTextFieldFocused)
                    }
                }
                
                
                Spacer()
                
            }
            .padding()
            
            // 左上の閉じるボタン
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

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
                    .frame(height: 40)
                
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
                    
                    TextField("ex) Restaurant", text: $situation)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 12)
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                        )
                        .font(.title2)
                        .foregroundColor(.black)
                        .padding(.bottom, 8)
                    
                    Spacer()
                        .frame(height: 45)
                    
                    Button {
                        print("設定を保存")
                    } label: {
                        Text("Save")
                        .modifier(ButtonCustom())                    }
                    
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

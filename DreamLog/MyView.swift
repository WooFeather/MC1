//
//  MyView.swift
//  DreamLog
//
//  Created by 조우현 on 3/22/24.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("MyColor"), Color("MyColor2"), Color.white]), startPoint: .center, endPoint: .bottom)
                .ignoresSafeArea(.all, edges: .top)
            VStack {
                Text("Team  多多")
                    .font(.title3.bold())
                    .foregroundStyle(.white)
                    .padding(.bottom, 5)
                Text("🪽💡🐒👙📁")
            }
        }
    }
}

#Preview {
    MyView()
}

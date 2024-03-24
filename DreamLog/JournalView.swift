//
//  JournalView.swift
//  DreamLog
//
//  Created by 조우현 on 3/22/24.
//

import SwiftUI

struct JournalView: View {
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("MyColor"), Color("MyColor2"), Color.white]), startPoint: .center, endPoint: .bottom)
                    .ignoresSafeArea(.all, edges: .top)
                
                VStack {
                    Image("MainRini")
                        .resizable()
                        .frame(width: 300, height: 192.28)
                        .offset(x: 35)
                    
                    NavigationLink {
                        WriteView()
                    } label: {
                        HStack {
                            Text("기록하기\(Image(systemName: "pencil"))")
                                .foregroundStyle(.primary)
                                .font(.title.bold())
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    .frame(width: 300, height: 100)
                    .background(.secondary)
                    .clipShape(.capsule)
                }
            }
            .navigationTitle("꿈기로그")
            .toolbar {
                Button("설정", systemImage: "gearshape") { }
            }
        }
    }
}

#Preview {
    JournalView()
}

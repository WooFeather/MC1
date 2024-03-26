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
                    Text("오늘의 꿈을 들려줘 ✨")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .padding(.horizontal, 20)
                        .padding()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.white,lineWidth: 1.5)
                                
                        )
                    

                    Image(systemName: "arrowtriangle.down.fill")
                        .foregroundStyle(Color.white)
                        .padding(.bottom)

                    Image("CalendarRini")
                        .resizable()
                        .frame(width: 200, height: 192.28)
                    
                    NavigationLink {
                        WriteView()
                            .toolbarRole(.editor)
                    } label: {
                        HStack {
                            Text("기록하기\(Image(systemName: "pencil"))")
                                .font(.title.bold())
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    .frame(width: 300, height: 100)
                    .background(.secondary)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
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

//
//  WriteView.swift
//  DreamLog
//
//  Created by 조우현 on 3/22/24.
//

import SwiftUI

struct WriteView: View {
    @AppStorage("notes") private var notes = ""
    @State var selectedDate: Date = Date()
    @State private var showingSavePage = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.secondary
                    .opacity(0.3)
                    .ignoresSafeArea()
                
                ZStack {
                    VStack {
                        Text("오늘은 어떤 꿈을 꿨어?")
                            .font(.title2)
                            .foregroundStyle(.white)
                            .padding(.horizontal, 30)
                            .padding()
                            .background(Color("MyColor"))
                            .clipShape(.capsule)
                            .offset(y: -120)
                        
                        Image(systemName: "arrowtriangle.down.fill")
                            .foregroundStyle(Color("MyColor"))
                            .offset(y: -120)
                            
                        
                        Image("WriteRini")
                            .resizable()
                            .frame(width: 200, height: 200)
                            .offset(y:-120)
                        
                        DatePicker("", selection: $selectedDate, displayedComponents: .date)
                            .offset(x:-235, y:-170)
                    }
                    
                    ZStack {
                        TextEditor(text: $notes)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .frame(maxWidth: 330, maxHeight: 300)
                            .lineSpacing(10)
                            .disableAutocorrection(true)
                            .padding()
                        
                        if notes.isEmpty {
                            VStack {
                                HStack {
                                    Text("오늘의 일기를 입력하세요...")
                                        .foregroundStyle(.tertiary)
                                        .padding(.top, 8)
                                        .padding(.leading, 40)
                                        .offset(x:-88, y:-135)
                                }
                            }
                        }
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("MyColor"), lineWidth: 1.5)
                            .frame(maxWidth: 330, maxHeight: 300)
                    )
                    .offset(y:150)
                }
                .toolbar {
                    Button("저장", systemImage: "checkmark") { 
                        showingSavePage = true
                    }
                }
                .sheet(isPresented: $showingSavePage, content: {
                    ResultView(notes: notes, selectedDate: selectedDate)
                })
            }
        }
//        .ignoresSafeArea(.keyboard)
    }
}

#Preview {
    WriteView()
}

//
//  SummaryView.swift
//  DreamLog
//
//  Created by 조우현 on 3/24/24.
//

import SwiftUI

struct SummaryView: View {
    var notes: String
    var selectedDate: Date
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy.MM.dd"
        return dateFormatter.string(from: selectedDate)
    }
    
    init(notes: String, selectedDate: Date) {
        self.notes = notes
        self.selectedDate = selectedDate
    }
    
    let summaryText = "꿈속 초원, 사랑했던 포메라니안과 재회. 푸른 하늘, 야생화 속 행복한 시간. 깨어나도 따뜻함 남아 위안을 주네."
    
    var body: some View {
        Group {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("MyColor"), lineWidth: 1)
                    .frame(maxWidth: 330, maxHeight: 500)
                
                VStack {
                    Image("SummaryImage")
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    
                    Text("오늘의 꿈 요약")
                        .font(.callout.bold())
                        .offset(x: -105)
                    
                    Text("\(summaryText)")
                        .fixedSize(horizontal: false, vertical: false)
                        .padding()
                        .frame(width: 300, height: 100)
                        .background(Rectangle().fill(Color.white).shadow(radius: 3))
                    
                    HStack {
                        Text("#강아지")
                            .frame(width: 70, height: 15)
                            .padding(5)
                            .background(.secondary)
                            .clipShape(.capsule)
                            .padding(.trailing)
                        
                        Text("#동물")
                            .frame(width: 70, height: 15)
                            .padding(5)
                            .background(.secondary)
                            .clipShape(.capsule)
                            .padding(.trailing)
                        
                        
                        Text("#동산")
                            .frame(width: 70, height: 15)
                            .padding(5)
                            .background(.secondary)
                            .clipShape(.capsule)
                    }
                }
            }
            .offset(y: -30)
        }
    }
}


#Preview {
    SummaryView(notes: "꿈속 초원, 사랑했던 포메라니안과 재회. 푸른 하늘, 야생화 속 행복한 시간. 깨어나도 따뜻함 남아 위안을 주네.", selectedDate: .now)
}

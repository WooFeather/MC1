//
//  ResultView.swift
//  DreamLog
//
//  Created by 조우현 on 3/25/24.
//

import SwiftUI

struct FullTextView: View {
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
                    Text("오늘의 꿈")
                        .font(.callout.bold())
                        .offset(x: -120)
                        .padding(.top)
                    
                    Text("\(notes)")
                        .padding()
                        .frame(width: 300, height: 390, alignment: .topLeading)
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
    FullTextView(notes: "오늘 꿈에서, 넓은 초원을 달리는 작고 귀여운 포메라니안 강아지가 나를 향해 달려왔어. 이 강아지는 예전에 사랑했던 내 강아지였고, 마치 천국의 동산에서 나를 마중 나온 것 같았어. 푸른 하늘 아래, 야생화가 가득한 그곳에서 우리는 재회했고, 그 순간은 나에게 큰 위안과 행복을 가져다주었어.", selectedDate: .now)
}

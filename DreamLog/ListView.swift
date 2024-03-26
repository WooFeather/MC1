//
//  PagesView.swift
//  DreamLog
//
//  Created by 조우현 on 3/26/24.
//

import SwiftUI

struct ListView: View {
    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy.MM.dd"
        return dateFormatter.string(from: .now)
    }
    
    var body: some View {
        List {
            NavigationLink {
                ResultView(notes: "오늘 꿈에서, 넓은 초원을 달리는 작고 귀여운 포메라니안 강아지가 나를 향해 달려왔어. 이 강아지는 예전에 사랑했던 내 강아지였고, 마치 천국의 동산에서 나를 마중 나온 것 같았어. 푸른 하늘 아래, 야생화가 가득한 그곳에서 우리는 재회했고, 그 순간은 나에게 큰 위안과 행복을 가져다주었어.", selectedDate: .now)
            } label: {
                Image("SummaryImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(.black, lineWidth: 0.5)
                    )
                
                VStack(alignment: .leading) {
                    Text(formattedDate)
                        .font(.headline)
                    
                    HStack {
                        Text("#강아지")
                        Text("#동물")
                        Text("#동산")
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                }
            }
        }
    }
}

#Preview {
    ListView()
}

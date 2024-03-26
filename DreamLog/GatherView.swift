//
//  GatherView.swift
//  DreamLog
//
//  Created by 조우현 on 3/26/24.
//

import SwiftUI

struct GatherView: View {
    @State private var selectedTab = 1
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("MyColor"), Color("MyColor2"), Color.white]), startPoint: .center, endPoint: .bottom)
                    .ignoresSafeArea(.all, edges: .top)
                
                VStack(spacing: 0) {
                    HStack {
                        tabButton(title: "캘린더", tag: 1)
                        tabButton(title: "리스트", tag: 2)
                    }
                    .padding(.top)
                    .font(.headline)
                    
                    Divider()
                        .background()
                    
                    TabView(selection: $selectedTab) {
                        CalendarView().tag(1)
                        ListView().tag(2)
                    }
                    .onAppear {
                        UIScrollView.appearance().isScrollEnabled = false
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                }
                
                
                
            .navigationTitle("모아보기")
            }
        }
    }
    
    func tabButton(title: String, tag: Int) -> some View {
        VStack {
            Button(title) { withAnimation { selectedTab = tag } }
                .frame(maxWidth: .infinity)
                .foregroundStyle(selectedTab == tag ? .white : .gray)
            
            Color(selectedTab == tag ? Color.white : .clear)
                .frame(height: 4)
        }
    }
}

#Preview {
    GatherView()
}

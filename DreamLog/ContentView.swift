//
//  ContentView.swift
//  DreamLog
//
//  Created by 조우현 on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TabView() {
                JournalView()
                    .tabItem {
                        Label("일기", systemImage: "book.pages")
                    }
                
                GatherView()
                    .tabItem {
                        Label("모아보기", systemImage: "calendar")
                    }
                
                MyView()
                    .tabItem {
                        Label("마이페이지", systemImage: "person")
                    }
            }
            .accentColor(Color("MyColor"))
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  DesignCodeiOS15
//
//  Created by Het Prajapati on 12/15/21.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Group {
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            .previewDevice("iPhone 13 Pro")
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 13 Pro")
        }
    }
}

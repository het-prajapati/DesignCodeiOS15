//
//  TabBar.swift
//  DesignCodeiOS15
//
//  Created by Het Prajapati on 12/17/21.
//

import SwiftUI

struct TabBar: View {
    
    @State var selectedTab: Tab = .home

    var body: some View {
        ZStack(alignment: .bottom) {
            
            Group {
                switch selectedTab {
                case .home:
                    ContentView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        
           
            HStack {
                ForEach(tabItems) { item in
                    Button {
                        selectedTab = item.tab
                    } label : {
                        VStack(spacing: 0) {
                            Image(systemName: item.icon)
                                .symbolVariant(.fill)
                                .font(.body.bold())
                                .frame(width: 80, height: 29)
                            Text(item.text)
                                .font(.caption2)
                                .lineLimit(1)
                            
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
                }
                
            }
            .padding(.horizontal, 8)
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous))
            .frame(maxHeight: .infinity, alignment: .bottom)
            .strokeStyle(cornerRadius: 34)
            .ignoresSafeArea()
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
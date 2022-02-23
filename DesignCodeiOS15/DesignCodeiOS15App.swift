//
//  DesignCodeiOS15App.swift
//  DesignCodeiOS15
//
//  Created by Het Prajapati on 12/15/21.
//

import SwiftUI

@main
struct DesignCodeiOS15App: App {
    
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}

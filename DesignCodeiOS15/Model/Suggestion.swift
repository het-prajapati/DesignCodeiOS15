//
//  Suggestion.swift
//  DesignCodeiOS15
//
//  Created by Het Prajapati on 2/24/22.
//

import SwiftUI

struct Suggestion: Identifiable {
    let id = UUID()
    var text: String
}

var suggestions = [
    
    Suggestion(text: "SwiftUI"),
    Suggestion(text: "React"),
    Suggestion(text: "Design")
]

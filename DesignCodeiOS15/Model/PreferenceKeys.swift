//
//  PreferenceKeys.swift
//  DesignCodeiOS15
//
//  Created by Het Prajapati on 12/18/21.
//

import SwiftUI

struct ScrollPreferenceKeys: PreferenceKey {
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

struct CirclePreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}

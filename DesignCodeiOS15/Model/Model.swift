//
//  Model.swift
//  DesignCodeiOS15
//
//  Created by Het Prajapati on 1/20/22.
//

import SwiftUI
import Combine

class Model: ObservableObject {
    
    @Published var showDetail: Bool = false
    @Published var selectedModal: Modal = .signIn
    
}

enum Modal: String {
    case signUp
    case signIn
}

//
//  HexagonView.swift
//  DesignCodeiOS15
//
//  Created by Het Prajapati on 12/17/21.
//

import SwiftUI

struct HexagonView: View {
    var body: some View {
        Canvas { context, size in
//            context.draw(Text("DesignCode"), in: CGRect(x: 0, y: 0, width: 100, height: 100))
//            context.fill(Path(ellipseIn: CGRect(x: 0, y: 0, width: 100, height: 100)), with: .color(.red))
//            context.draw(Image("Blob 1"), in: CGRect(x: 0, y: 0, width: 200, height: 200))
            context.draw(Image(systemName: "hexagon.fill"), in: CGRect(x: 50, y: 20, width: size.width, height: size.height))
        }
        .frame(width: 200, height: 212)
        .foregroundStyle(.linearGradient(colors: [.pink, .blue], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct HexagonView_Previews: PreviewProvider {
    static var previews: some View {
        HexagonView()
    }
}

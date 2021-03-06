//
//  FeaturedItem.swift
//  DesignCodeiOS15
//
//  Created by Het Prajapati on 12/18/21.
//

import SwiftUI

struct FeaturedItem: View {
    var course: Course = courses[0]
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0){
            Spacer()
            Image(course.logo)
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .cornerRadius(10)
                .padding(9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                .strokeStyle(cornerRadius: 16)
                
            Text(course.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            Text(course.subtitle.uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            Text(course.text)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all, 20.0)
        .padding(.vertical, 20.0)
        .frame(height: 350)
        .background(.ultraThinMaterial)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        //        .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
        //        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle()
        .padding(.horizontal, 20.0)
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}

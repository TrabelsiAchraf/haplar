//
//  HaplarDayView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 21/02/2021.
//

import SwiftUI

struct HLDayView: View {
    var date: Date
    var isSelected: Bool
    
    var body: some View {
        VStack {
            Text(date.dayLabel)
                .font(.caption)
                .frame(width: 30, height: 10, alignment: .center)
                .foregroundColor(isSelected ? .white : .hlDayTitle)
                .padding()
            Text(date.dayNumber)
                .font(.caption)
                .foregroundColor(.black)
                .frame(width: 35, height: 35, alignment: .center)
                .background(Color.white)
                .clipShape(Circle())
        }
        .frame(width: 15, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding()
        .background(isSelected ? Color.hlPurple : Color.hlDayBackground)
        .cornerRadius(30)
    }
}

struct HLDayView_Previews: PreviewProvider {
    static var previews: some View {
        HLDayView(date: Date(), isSelected: false)
            .previewLayout(.sizeThatFits)
            .padding()
        HLDayView(date: Date(), isSelected: true)
            .previewLayout(.sizeThatFits)
            .padding()
        HLDayView(date: Date(), isSelected: false)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
        HLDayView(date: Date(), isSelected: true)
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}

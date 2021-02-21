//
//  HaplarDayView.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 21/02/2021.
//

import SwiftUI

extension Date {
    func get(_ components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents {
        return calendar.dateComponents(Set(components), from: self)
    }

    func get(_ component: Calendar.Component, calendar: Calendar = Calendar.current) -> Int {
        return calendar.component(component, from: self)
    }
}

struct HLDayView: View {
    var date: Date
    var body: some View {
        VStack {
            Text(dayLabel)
                .font(.body)
                .frame(width: 30, height: 10, alignment: .center)
                .foregroundColor(.white)
                .padding()
            Text(dayNumber)
                .font(.caption)
                .foregroundColor(.black)
                .frame(width: 35, height: 35, alignment: .center)
                .background(Color.white)
                .clipShape(Circle())
        }
        .frame(width: 15, height: 65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding()
        .background(Color("HLPurple"))
        .cornerRadius(30)
    }
    
    var dayLabel: String {
        let format = DateFormatter()
        format.dateFormat = "E"
        let formattedDate = format.string(from: date)
        return formattedDate
    }
    
    var dayNumber: String {
        let format = DateFormatter()
        format.dateFormat = "d"
        let formattedDate = format.string(from: date)
        return formattedDate
    }
}

struct HLDayView_Previews: PreviewProvider {
    static var previews: some View {
        HLDayView(date: Date())
            .previewLayout(.sizeThatFits)
                  HLDayView(date: Date())
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}

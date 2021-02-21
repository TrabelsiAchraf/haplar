//
//  DateExtension.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 22/02/2021.
//

import Foundation

extension Date {
    func get(_ components: Calendar.Component..., calendar: Calendar = Calendar.current) -> DateComponents {
        return calendar.dateComponents(Set(components), from: self)
    }

    func get(_ component: Calendar.Component, calendar: Calendar = Calendar.current) -> Int {
        return calendar.component(component, from: self)
    }
    
    var dayLabel: String {
        let format = DateFormatter()
        format.dateFormat = "E"
        let formattedDate = format.string(from: self)
        return formattedDate
    }
    
    var dayNumber: String {
        let format = DateFormatter()
        format.dateFormat = "d"
        let formattedDate = format.string(from: self)
        return formattedDate
    }
}

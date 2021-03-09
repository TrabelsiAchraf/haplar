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
    
    var dayFullFormat: String {
        let format = DateFormatter()
        format.doesRelativeDateFormatting = true
        format.dateStyle = .long
        let formattedDate = format.string(from: self)
        return formattedDate
    }
    
    static func getAllDaysOfTheCurrentWeek() -> [Date] {
        var dates: [Date] = []
        guard let dateInterval = Calendar.current.dateInterval(of: .weekOfYear, for: Date()) else {
            return dates
        }
        Calendar
            .current
            .enumerateDates(
                startingAfter: dateInterval.start,
                matching: DateComponents(hour: 0),
                matchingPolicy: .nextTime
            ) { date, _, stop in
                guard let date = date else {
                    return
                }
                if date <= dateInterval.end {
                dates.append(date)
            } else {
                stop = true
            }
        }
        return dates
    }
    
    static func compareDate(date1: Date, date2: Date) -> Bool {
        Calendar.current.compare(date1, to: date2, toGranularity: .day) == .orderedSame
    }
}

//
//  HomeViewModel.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 09/03/2021.
//

import SwiftUI
import Combine
import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var days: [HLDay] = []
    
    convenience init(forPreview: Bool) {
        self.init()
        if forPreview { retrieveWeekDays() }
    }
    
    // MARK: - Public
    
    func retrieveWeekDays() {
        var HLDays: [HLDay] = []
        Date.getAllDaysOfTheCurrentWeek().forEach { date in
            HLDays.append(HLDay(id: UUID(), date: date, isSelected: Date.compareDate(date1: date, date2: Date()) ? true : false))
        }
        days = HLDays
    }
    
    func selectDay(_ day: Date) {
        let selectedDayIndex = days.firstIndex { $0.date == day }
        guard let index = selectedDayIndex else { return }
        days = days.map { day in
            let mutableDay = day
            mutableDay.isSelected = false
            return mutableDay
        }
        let selectedDay = days[index]
        selectedDay.isSelected = true
        days[index] = selectedDay
    }
}

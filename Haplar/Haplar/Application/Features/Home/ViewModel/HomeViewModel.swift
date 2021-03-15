//
//  HomeViewModel.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 09/03/2021.
//

import SwiftUI
import Combine
import Foundation

final class HomeViewModel: ObservableObject {
    
    @Published private(set) var days: [HLDay] = []
    @Published private(set) var isMedicineInSchedule = true
    @Published private(set) var medicineSchedules: [MedicineShcedule] = [
        MedicineShcedule(id: UUID(), icon: Image("icon_pills"), name: "Arnabite", quanity: MedicineShcedule.Quanity(total: 5, left: 15)),
        MedicineShcedule(id: UUID(), icon: Image("icon_pills"), name: "Marcdine", quanity: MedicineShcedule.Quanity(total: 30, left: 24)),
        MedicineShcedule(id: UUID(), icon: Image("icon_pills"), name: "Jermidina", quanity: MedicineShcedule.Quanity(total: 35, left: 35))
    ]
    
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
            var mutableDay = day
            mutableDay.isSelected = false
            return mutableDay
        }
        var selectedDay = days[index]
        selectedDay.isSelected = true
        days[index] = selectedDay
    }
}

//
//  HLDayModel.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 09/03/2021.
//

import SwiftUI

struct HLDay: Identifiable {
    var id: UUID
    let date: Date
    var isSelected: Bool
    
    init(id: UUID, date: Date, isSelected: Bool) {
        self.id = id
        self.date = date
        self.isSelected = isSelected
    }
}

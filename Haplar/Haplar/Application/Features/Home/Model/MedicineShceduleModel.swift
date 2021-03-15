//
//  MedicineShceduleModel.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 15/03/2021.
//

import SwiftUI

struct MedicineShcedule: Identifiable {
    var id: UUID
    let icon: Image
    let name: String
    let quanity: Quanity
    var leftUnit: String {
        "\(quanity.left)/\(quanity.total) units"
    }
    var leftUnitStatus: StockStatus {
        let half = quanity.total * 50 / 100
        let minConfortable = quanity.total * 70 / 100
        let third = quanity.total * 30 / 100
        if quanity.left >= half && quanity.left <= minConfortable {
            return .normal
        } else if quanity.left <= third {
            return .risk
        } else {
            return .comfortable
        }
    }
    
    struct Quanity {
        let total: Int
        let left: Int
    }
    
    enum StockStatus {
        case risk, normal, comfortable
    }
}

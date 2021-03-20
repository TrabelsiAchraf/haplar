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
        let minConfortableInterval = quanity.total * 70 / 100
        let minNormalInterval = quanity.total * 30 / 100
        
        switch quanity.left {
        case let value where value > minNormalInterval && value < minConfortableInterval:
            return .normal
        case let value where value <= minNormalInterval:
            return .risk
        case let value where value >= minConfortableInterval:
            return .confortable
        default:
            return .problem
        }
    }
    
    struct Quanity {
        let total: Int
        let left: Int
    }
    
    enum StockStatus {
        case risk, normal, confortable, problem
    }
}

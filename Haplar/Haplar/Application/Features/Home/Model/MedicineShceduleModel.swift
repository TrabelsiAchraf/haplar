//
//  MedicineShceduleModel.swift
//  Haplar
//
//  Created by Achraf Trabelsi on 15/03/2021.
//

import SwiftUI

struct MedicineShcedule {
    let icon: Image
    let name: String
    let quanity: Quanity
    var leftUnit: String {
        "\(quanity.left)/\(quanity.total) units"
    }
    
    struct Quanity {
        let total: Int
        let left: Int
    }
}

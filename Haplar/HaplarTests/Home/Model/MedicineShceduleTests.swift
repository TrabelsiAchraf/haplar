//
//  MedicineShceduleTests.swift
//  HaplarTests
//
//  Created by Achraf Trabelsi on 15/03/2021.
//

import XCTest
import SwiftUI
@testable import Haplar

class MedicineShceduleTests: XCTestCase {
    
    func test_thatfails() {
        let quantity = MedicineShcedule.Quanity(total: 40, left: 20)
        let sut = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity)
        XCTAssertEqual(sut.leftUnit, "20/40 units", "left unit message should respect the format: 'left/total units'")
    }
}

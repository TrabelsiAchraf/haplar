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
    
    func test_leftUnit_shouldRespectLeftByTotalUnitsFormat() {
        let quantity = MedicineShcedule.Quanity(total: 40, left: 20)
        let sut = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity)
        XCTAssertEqual(sut.leftUnit, "20/40 units", "left unit message should respect the format: 'left/total units'")
    }
    
    func test_ifLeftQuantityIsBetweenMinNormalIntervalAndMinConfortableInterval_gaugeStatusShouldBeNormal() {
        let quantity = MedicineShcedule.Quanity(total: 40, left: 21)
        let sut = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity)
        let quantity2 = MedicineShcedule.Quanity(total: 40, left: 25)
        let sut2 = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity2)
        let quantity3 = MedicineShcedule.Quanity(total: 40, left: 27)
        let sut3 = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity3)
        XCTAssertEqual(sut.leftUnitStatus, .normal)
        XCTAssertEqual(sut2.leftUnitStatus, .normal)
        XCTAssertEqual(sut3.leftUnitStatus, .normal)
    }
    
    func test_ifLeftQuantityIsBiggerOrEqualMinConfortableInterval_gaugeStatusShouldBeConfortable() {
        let quantity = MedicineShcedule.Quanity(total: 40, left: 37)
        let sut = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity)
        let quantity2 = MedicineShcedule.Quanity(total: 40, left: 40)
        let sut2 = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity2)
        XCTAssertEqual(sut.leftUnitStatus, .confortable)
        XCTAssertEqual(sut2.leftUnitStatus, .confortable)
    }
    
    func test_ifLeftQuantityIsLessOrEqualNormalInterval_gaugeStatusShouldBeRisky() {
        let quantity = MedicineShcedule.Quanity(total: 40, left: 10)
        let sut = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity)
        let quantity2 = MedicineShcedule.Quanity(total: 40, left: 12)
        let sut2 = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity2)
        XCTAssertEqual(sut.leftUnitStatus, .risk)
        XCTAssertEqual(sut2.leftUnitStatus, .risk)
    }
}

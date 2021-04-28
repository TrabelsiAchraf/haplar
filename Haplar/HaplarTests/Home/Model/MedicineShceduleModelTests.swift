//
//  MedicineShceduleTests.swift
//  HaplarTests
//
//  Created by Achraf Trabelsi on 15/03/2021.
//

import XCTest
import SwiftUI
@testable import Haplar

class MedicineShceduleModelTests: XCTestCase {
    
    func test_leftUnit_shouldRespectLeftByTotalUnitsFormat() {
        let sut = createMedicine(totalQuantity: 40, leftQuantity: 20)
        XCTAssertEqual(sut.leftUnit, "20/40 units", "left unit message should respect the format: 'left/total units'")
    }
    
    func test_leftQuantityIsLessThanZero_shouldShowEmptyText() {
        let quantity = MedicineShcedule.Quanity(total: 40, left: -1)
        let sut = MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity)
        XCTAssertEqual(sut.leftUnit, "")
    }
    
    func test_leftQuantityIsBigThanTotalQuantity_shouldShowEmptyText() {
        let sut = createMedicine(totalQuantity: 40, leftQuantity: 45)
        XCTAssertEqual(sut.leftUnit, "")
    }
    
    func test_ifLeftQuantityIsBetweenMinNormalIntervalAndMinConfortableInterval_gaugeStatusShouldBeNormal() {
        let sut = createMedicine(totalQuantity: 40, leftQuantity: 21)
        let sut2 = createMedicine(totalQuantity: 40, leftQuantity: 25)
        let sut3 = createMedicine(totalQuantity: 40, leftQuantity: 27)
        XCTAssertEqual(sut.leftUnitStatus, .normal)
        XCTAssertEqual(sut2.leftUnitStatus, .normal)
        XCTAssertEqual(sut3.leftUnitStatus, .normal)
    }
    
    func test_ifLeftQuantityIsBiggerOrEqualMinConfortableInterval_gaugeStatusShouldBeConfortable() {
        let sut = createMedicine(totalQuantity: 40, leftQuantity: 37)
        let sut2 = createMedicine(totalQuantity: 40, leftQuantity: 40)
        XCTAssertEqual(sut.leftUnitStatus, .confortable)
        XCTAssertEqual(sut2.leftUnitStatus, .confortable)
    }
    
    func test_ifLeftQuantityIsLessOrEqualNormalInterval_gaugeStatusShouldBeRisky() {
        let sut = createMedicine(totalQuantity: 40, leftQuantity: 10)
        let sut2 = createMedicine(totalQuantity: 40, leftQuantity: 12)
        XCTAssertEqual(sut.leftUnitStatus, .risk)
        XCTAssertEqual(sut2.leftUnitStatus, .risk)
    }
    
    func test_ifLeftQuantityIsBiggerThanTotalQuantity_gaugeStatusShouldBeFailed() {
        let sut = createMedicine(totalQuantity: 40, leftQuantity: 42)
        XCTAssertEqual(sut.leftUnitStatus, .problem)
    }
    
    func test_ifLeftQuantityIsLessThanZero_gaugeStatusShouldBeFailed() {
        let sut = createMedicine(totalQuantity: 40, leftQuantity: -10)
        XCTAssertEqual(sut.leftUnitStatus, .problem)
    }
    
    // MARK: - Helper
    
    private func createMedicine(totalQuantity: Int, leftQuantity: Int) -> MedicineShcedule {
        let quantity = MedicineShcedule.Quanity(total: totalQuantity, left: leftQuantity)
        return MedicineShcedule(id: UUID(), icon: Image("test"), name: "Arnabite", quanity: quantity)
    }
}

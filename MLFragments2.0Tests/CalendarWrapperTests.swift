//
//  CalendarWrapperTests.swift
//  MLFragments2.0Tests
//
//  Created by Oshyn on 10/23/19.
//  Copyright © 2019 Ricardo Herrera Petit. All rights reserved.
//

import XCTest
@testable import MLFragments2_0

class CalendarWrapperTests: XCTestCase {

    func test_DateFrom_1970_01_01_01_00_00_IsSameDayAs_1970_01_01_01_01() {
        let sut = CalendarWrapper()
        let date1 = Date(timeIntervalSince1970: 0)
        let date2 = Date(timeIntervalSince1970: 1)
        let isTheSameDay = sut.isDate(date1:date1, inSameDayAs:date2)
        XCTAssertTrue(isTheSameDay)
    }
    
    func test_DateFrom_1970_01_01_01_00_00_IsSameDayAs_1970_01_02_01_01() {
        let sut = CalendarWrapper()
        let date1 = Date(timeIntervalSince1970: 0)
        let date2 = Date(timeIntervalSince1970: 86400)
        let isTheSameDay = sut.isDate(date1:date1, inSameDayAs:date2)
        XCTAssertFalse(isTheSameDay)
    }

    
}

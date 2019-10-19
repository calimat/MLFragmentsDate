//
//  DateFormatterWrapperTests.swift
//  MLFragments2.0Tests
//
//  Created by Ricardo Herrera Petit on 10/19/19.
//  Copyright © 2019 Ricardo Herrera Petit. All rights reserved.
//

import XCTest
@testable import MLFragments2_0


class DateFormatterWrapperTests: XCTestCase {

    func testPassingAISODateConvertToDateIsNotNil() {
        let sut = DateFormatterWrapper()
        let date = sut.convert(isoStringDate: "2019-10-18T03:00:00-0500")
        XCTAssertNotNil(date)
    }

    func testPassingAISODateConvertToDateIsCorrectDate() {
           let sut = DateFormatterWrapper()
           let date = sut.convert(isoStringDate: "2019-10-18T03:00:00-0500")
        XCTAssertEqual(date.description, "2019-10-18 08:00:00 +0000")
    }
    
    func testAddADayToDate() {
        let sut = DateFormatterWrapper()
        let strDate = "2019-10-18T08:00:00+0000"
        let newDate = sut.add(days:1, startDate: strDate)
        XCTAssertEqual(newDate.description, "2019-10-19 08:00:00 +0000")
    }
    
    func testAddThreeDaysToDate() {
           let sut = DateFormatterWrapper()
           let strDate = "2019-10-18T08:00:00+0000"
           let newDate = sut.add(days:3, startDate: strDate)
           XCTAssertEqual(newDate.description, "2019-10-21 08:00:00 +0000")
       }
}

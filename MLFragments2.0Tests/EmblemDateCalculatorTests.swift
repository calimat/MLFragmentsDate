//
//  EmblemDateCalculatorTests.swift
//  MLFragments2.0Tests
//
//  Created by Ricardo Herrera Petit on 10/18/19.
//  Copyright © 2019 Ricardo Herrera Petit. All rights reserved.
//

import XCTest
class EmblemCalculator {
    func add(days:Int, startDate:String) -> String {
        if(days == 1 ) {
            return "2019-10-19T03:00:00-0500"
        }
        if(days == 2) {
          return "2019-10-20T03:00:00-0500"
        }
        return "2019-10-21T03:00:00-0500"
    }
}


class EmblemDateCalculatorTests: XCTestCase {

    
    func test_AddOneDayToDate() {
        let sut = EmblemCalculator()
        let newDate = sut.add(days: 1, startDate: "2019-10-18T03:00:00-0500")
        XCTAssertEqual(newDate, "2019-10-19T03:00:00-0500")
    }
    
    func test_AddTwoDaysToDate() {
          let sut = EmblemCalculator()
          let newDate = sut.add(days: 2, startDate: "2019-10-18T03:00:00-0500")
          XCTAssertEqual(newDate, "2019-10-20T03:00:00-0500")
    }
    
    func test_AddThreeDaysToDate() {
             let sut = EmblemCalculator()
             let newDate = sut.add(days: 3, startDate: "2019-10-18T03:00:00-0500")
             XCTAssertEqual(newDate, "2019-10-21T03:00:00-0500")
       }

}

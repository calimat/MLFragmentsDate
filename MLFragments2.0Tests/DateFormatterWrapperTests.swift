import XCTest
@testable import MLFragments2_0


class DateFormatterWrapperTests: XCTestCase {
    
    let sut = DateFormatterWrapper()
    
    func testPassingAISODateConvertToDateIsNotNil() {
        let date = sut.date(isoStringDate: "2019-10-18T03:00:00-0500")
        XCTAssertNotNil(date)
    }
    
    func testPassingAISODateConvertToDateIsCorrectDate() {
        let date = sut.date(isoStringDate: "2019-10-18T03:00:00-0500")
        XCTAssertEqual(date.description, "2019-10-18 08:00:00 +0000")
    }
    
    func testAddADayToDate() {
        let strDate = "2019-10-18T08:00:00+0000"
        let newDate = sut.add(days:1, startDate: strDate)
        XCTAssertEqual(newDate.description, "2019-10-19 08:00:00 +0000")
    }
    
    func testAddThreeDaysToDate() {
        let strDate = "2019-10-18T08:00:00+0000"
        let newDate = sut.add(days:3, startDate: strDate)
        XCTAssertEqual(newDate.description, "2019-10-21 08:00:00 +0000")
    }
    
    func testDateFrom1970ToString() {
        let date = Date(timeIntervalSince1970: 0)
        let newStringDate = sut.string(date: date)
        XCTAssertEqual(newStringDate, "1969-12-31T19:00:00-05:00")
    }
    
    func testDateFrom1970And1ToString() {
        let date = Date(timeIntervalSince1970: 1)
        let newStringDate = sut.string(date: date)
        XCTAssertEqual(newStringDate, "1969-12-31T19:00:01-05:00")
    }
    
}

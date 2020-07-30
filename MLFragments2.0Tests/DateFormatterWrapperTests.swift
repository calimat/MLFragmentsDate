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
    
    func testAddAnHourToDate() {
        let strDate = "2019-10-18T08:00:00+0000"
        let newDate = sut.add(hours: 1, startDate: strDate)
        XCTAssertEqual(newDate.description, "2019-10-18 09:00:00 +0000")
        
    }
    
    func testAddThreeDaysToDate() {
        let strDate = "2019-10-18T08:00:00+0000"
        let newDate = sut.add(days:3, startDate: strDate)
        XCTAssertEqual(newDate.description, "2019-10-21 08:00:00 +0000")
    }
    
    func testDateFrom1970ToString() {
        let date = Date(timeIntervalSince1970: 0)
        let newStringDate = sut.string(date: date, withTimezone: BOGOTA_TIMEZONE)
        XCTAssertEqual(newStringDate, "1969-12-31T19:00:00-05:00")
    }
    
    func testDateFrom1970And1ToString() {
        let date = Date(timeIntervalSince1970: 1)
        let newStringDate = sut.string(date: date, withTimezone: BOGOTA_TIMEZONE)
        XCTAssertEqual(newStringDate, "1969-12-31T19:00:01-05:00")
    }
    
    func test_PresentDateInFriendlyFormat() {
           let date = Date(timeIntervalSince1970: 0)
           let stringDate = sut.getFriendlyDate(date: date)
           XCTAssertEqual(stringDate, "Wednesday, December 31, 1969 at 7:00 PM")
    }
    
    func test_PresentDateInFriendlyFormatSecondTest() {
           let date = Date(timeIntervalSince1970: 19828)
           let stringDate = sut.getFriendlyDate(date: date)
           XCTAssertEqual(stringDate, "Thursday, January 1, 1970 at 12:30 AM")
    }
    
    func test_DateForTimeZone_PDT() {
        let date = getDate(day: 30, month: 7, year: 2020, hour: 11, minute: 31, second: 0, timezone: PACIFIC_TIMEZONE)
        let stringDate = sut.getFriendlyDate(date: date!, with: PACIFIC_TIMEZONE)
        XCTAssertEqual(stringDate, "Thursday, July 30, 2020 at 11:31 AM")
    }
    
    func test_DateForTimeZone_BOT() {
           let date = getDate(day: 30, month: 7, year: 2020, hour: 11, minute: 31, second: 0, timezone: BOGOTA_TIMEZONE)
           let stringDate = sut.getFriendlyDate(date: date!, with: BOGOTA_TIMEZONE)
           XCTAssertEqual(stringDate, "Thursday, July 30, 2020 at 11:31 AM")
       }
    
    func getDate(day:Int, month:Int, year:Int, hour:Int, minute:Int, second:Int, timezone:TimeZone) -> Date? {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.day = day
        dateComponents.month = month
        dateComponents.year = year
        dateComponents.hour = hour
        dateComponents.minute = minute
        dateComponents.second = second
        dateComponents.timeZone = timezone
        return calendar.date(from: dateComponents)
    }
    
}

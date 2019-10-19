import XCTest
@testable import MLFragments2_0


class MLFragments2_0Tests: XCTestCase {
    
    var sut: EmblemDater = EmblemDater(dateFromatAdapter: DateFormatterWrapper())
    let currentDate = "2019-10-18T03:00:00-0500"
    
    func test_NextCurrentAvailableDateForSupportWhenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .Support ,currentDate: currentDate)
        XCTAssertEqual(nextAvailableDate,"2019-10-21 08:00:00 +0000")
        
    }
    
    func test_NextCurrentAvailableDateForMarksManWhenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .MarksMan ,currentDate: currentDate)
        XCTAssertEqual(nextAvailableDate,"2019-10-24 08:00:00 +0000")
        
    }
    
    func test_NextCurrentAvailableDateForTankhenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .Tank ,currentDate: currentDate)
           XCTAssertEqual(nextAvailableDate,"2019-10-27 08:00:00 +0000")
           
    }
    
    func test_NextCurrentAvailableDateForJunglehenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .Jungle ,currentDate: currentDate)
              XCTAssertEqual(nextAvailableDate,"2019-10-30 08:00:00 +0000")
    }

    func test_NextCurrentAvailableDateForAssasinWhenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .Assassin  ,currentDate: currentDate)
                 XCTAssertEqual(nextAvailableDate,"2019-11-02 08:00:00 +0000")
    }
    
    
    
    
}

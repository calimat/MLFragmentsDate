import XCTest
@testable import MLFragments2_0


class MLFragments2_0Tests: XCTestCase {
    
    var sut: EmblemDater = EmblemDater()
    let currentDate = "2019-10-18T22:00:00-0500"
    
    func test_NextCurrentAvailableDateForSupportWhenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .Support ,currentDate: currentDate)
        XCTAssertEqual(nextAvailableDate,"2019-10-21T03:00:00-0500")
        
    }
    
    func test_NextCurrentAvailableDateForMarksManWhenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .MarksMan ,currentDate: currentDate)
        XCTAssertEqual(nextAvailableDate,"2019-10-24T03:00:00-0500")
        
    }
    
    func test_NextCurrentAvailableDateForTankhenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .Tank ,currentDate: currentDate)
           XCTAssertEqual(nextAvailableDate,"2019-10-27T03:00:00-0500")
           
    }
    
    func test_NextCurrentAvailableDateForJunglehenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .Jungle ,currentDate: currentDate)
              XCTAssertEqual(nextAvailableDate,"2019-10-30T03:00:00-0500")
    }

    
    
    
    
}

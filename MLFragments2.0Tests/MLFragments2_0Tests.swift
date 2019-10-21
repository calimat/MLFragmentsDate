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
    
    func test_NextCurrentAvailableDateForMageWhenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .Mage  ,currentDate: currentDate)
        XCTAssertEqual(nextAvailableDate,"2019-11-05 08:00:00 +0000")
    }
    
    func test_NextCurrentAvailableDateForFighterWhenCurrentDateIs18Oct2019() {
        let nextAvailableDate = sut.getNextAvailableDateFor(emblem: .Fighter  ,currentDate: currentDate)
        XCTAssertEqual(nextAvailableDate,"2019-11-08 08:00:00 +0000")
    }
    
    func test_GetCurrentEmblemFighterFor2019_10_18() {
        let emblem = sut.getEmblemForDate(date: "2019-10-18T03:00:00-0500")
        XCTAssertEqual(emblem, Emblems.Fighter)
        
    }
    
    func test_GetCurrentEmblemSupportFor2019_10_21() {
        let emblem = sut.getEmblemForDate(date: "2019-10-21T03:00:00-0500")
        XCTAssertEqual(emblem, Emblems.Support)
    }
    
    func test_GetCurrentEmblemMarksManFor2019_10_24() {
        let emblem = sut.getEmblemForDate(date: "2019-10-24T03:00:00-0500")
        XCTAssertEqual(emblem, Emblems.MarksMan)
    }
    
    func test_GetCurrentEmblemMarksManFor2019_10_25() {
        let emblem = sut.getEmblemForDate(date: "2019-10-25T03:00:00-0500")
        XCTAssertEqual(emblem, Emblems.MarksMan)
    }
    
    func test_GetCurrentEmblemTankFor2019_10_27() {
        let emblem = sut.getEmblemForDate(date: "2019-10-27T03:00:00-0500")
        XCTAssertEqual(emblem, Emblems.Tank)
    }
    
    func test_GetCurrentEmblemJungleFor2019_10_30() {
        let emblem = sut.getEmblemForDate(date: "2019-10-30T03:00:00-0500")
        XCTAssertEqual(emblem, Emblems.Jungle)
    }
    
    func test_GetCurrentEmblemAssasinFor2019_11_02() {
        let emblem = sut.getEmblemForDate(date: "2019-11-02T03:00:00-0500")
        XCTAssertEqual(emblem, Emblems.Assassin)
    }
    
    func test_GetCurrentEmblemAssasinFor2019_11_04() {
           let emblem = sut.getEmblemForDate(date: "2019-11-04T03:00:00-0500")
           XCTAssertEqual(emblem, Emblems.Assassin)
       }
    
    func test_GetCurrentEmblemMageFor2019_11_05() {
        let emblem = sut.getEmblemForDate(date: "2019-11-05T03:00:00-0500")
        XCTAssertEqual(emblem, Emblems.Mage)
    }
    
    func test_GetCurrentEmblemFighterFor2019_10_19() {
        let emblem = sut.getEmblemForDate(date: "2019-10-19T03:00:00-0500")
        XCTAssertEqual(emblem, Emblems.Fighter)
        
    }
}

import Foundation

public class EmblemDater {
    
    let dateFormatAdapter: DateFormaterAdapter
    let calendarAdapter : CalendarAdapter
    let baseDateStringFighterEmblem = "2019-10-18T03:00:00-0500"
    
    public init(dateFromatAdapter: DateFormaterAdapter, calendarAdapter: CalendarAdapter) {
        self.dateFormatAdapter = dateFromatAdapter
        self.calendarAdapter = calendarAdapter
    }
    
    public func getNextAvailableDateFor(emblem:Emblems, currentDate:String) -> Date {
        var currentEmblem = getEmblemForDate(date: currentDate)
        var baseCurrentDate = dateFormatAdapter.date(isoStringDate: currentDate)
        var days = 0
        var enteredWhileLoop = false
        while currentEmblem != emblem   {
            enteredWhileLoop = true
            days += 1
            baseCurrentDate = dateFormatAdapter.add(days: days, startDate: currentDate)
            currentEmblem = getEmblemForDate(date: dateFormatAdapter.string(date: baseCurrentDate))
        }
        
        if !enteredWhileLoop {
            let yesterdayDate = dateFormatAdapter.add(days: -1, startDate: currentDate)
            let yesterdayDateString = dateFormatAdapter.string(date: yesterdayDate)
            let tommorrowDate = dateFormatAdapter.add(days: 1, startDate: currentDate)
            let tommorrowDateString = dateFormatAdapter.string(date: tommorrowDate)
            let yesterdayEmblem = getEmblemForDate(date: yesterdayDateString)
            let tommorowEmblem = getEmblemForDate(date: tommorrowDateString)
            
            if yesterdayEmblem == currentEmblem && tommorowEmblem == currentEmblem {
                baseCurrentDate = dateFormatAdapter.add(days: 20, startDate: currentDate)
            } else if yesterdayEmblem != currentEmblem && tommorowEmblem == currentEmblem  {
                baseCurrentDate = dateFormatAdapter.add(days: 21, startDate: currentDate)
            } else if yesterdayEmblem == currentEmblem && tommorowEmblem != currentEmblem {
                 baseCurrentDate = dateFormatAdapter.add(days: 19, startDate: currentDate)
            }
        }
        
        let newDate = calendarAdapter.date(bySettingHour: 3, minute: 0, second: 0, of: baseCurrentDate)
        
        
        return newDate
        
        
    }
    
    
    
    func getEmblemForDate(date:String) -> Emblems {
        var baseDate = dateFormatAdapter.date(isoStringDate: baseDateStringFighterEmblem)        
        let dateForEmblem = dateFormatAdapter.date(isoStringDate: date)
        var currentEmblemIndex = 0
        var currentEmblem = Emblems.allCases[0]
        var days = 0
        while(baseDate < dateForEmblem) {
            if(calendarAdapter.isDate(date1: baseDate, inSameDayAs: dateForEmblem)) {
                break;
            }
            days += 1
            if( days % 3 == 0) {
                currentEmblemIndex = (currentEmblemIndex + 1) % Emblems.allCases.count
                currentEmblem = Emblems.allCases[currentEmblemIndex]
            }
            
            
            baseDate = dateFormatAdapter.add(days: days, startDate: baseDateStringFighterEmblem)
        }
        
        return baseDate > dateForEmblem ? Emblems.Mage : currentEmblem
        
    }
}

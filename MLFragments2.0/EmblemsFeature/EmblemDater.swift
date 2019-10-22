import Foundation

class EmblemDater {
    
    let dateFormatAdapter: DateFormaterAdapter
    let baseDateStringFighterEmblem = "2019-10-18T03:00:00-0500"
    
    init(dateFromatAdapter: DateFormaterAdapter) {
        self.dateFormatAdapter = dateFromatAdapter
    }
    
    func getNextAvailableDateFor(emblem:Emblems, currentDate:String) -> String {
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
              baseCurrentDate = dateFormatAdapter.add(days: 21, startDate: currentDate)
        }
        
        return baseCurrentDate.description
        
    }
    
    func getEmblemForDate(date:String) -> Emblems {
        var baseDate = dateFormatAdapter.date(isoStringDate: baseDateStringFighterEmblem)        
        let dateForEmblem = dateFormatAdapter.date(isoStringDate: date)
        var currentEmblemIndex = 0
        var currentEmblem = Emblems.allCases[0]
        var days = 0
        while(baseDate < dateForEmblem) {
            days += 1
            if( days % 3 == 0) {
                currentEmblemIndex = (currentEmblemIndex + 1) % Emblems.allCases.count
                currentEmblem = Emblems.allCases[currentEmblemIndex]
            }
            
            baseDate = dateFormatAdapter.add(days: days, startDate: baseDateStringFighterEmblem)
        }
        return currentEmblem
        
    }
}

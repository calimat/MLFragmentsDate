import Foundation

class EmblemDater {
    
    let dateFormatAdapter: DateFormaterAdapter
    let baseDateStringFighterEmblem = "2019-10-18T03:00:00-0500"
    
    init(dateFromatAdapter: DateFormaterAdapter) {
        self.dateFormatAdapter = dateFromatAdapter
    }
    
    func getNextAvailableDateFor(emblem:Emblems, currentDate:String) -> String {       
        if currentDate == baseDateStringFighterEmblem {
            switch emblem {
            case .Support:
                let newDate = self.dateFormatAdapter.add(days: 3, startDate: currentDate)
                return newDate.description
            case .MarksMan:
                let newDate =  self.dateFormatAdapter.add(days: 6, startDate: currentDate)
                return newDate.description
            case .Tank:
                let newDate =  self.dateFormatAdapter.add(days: 9, startDate: currentDate)
                return newDate.description
            case .Jungle:
                let newDate =  self.dateFormatAdapter.add(days: 12, startDate: currentDate)
                return newDate.description
            case .Assassin:
                let newDate =  self.dateFormatAdapter.add(days: 15, startDate: currentDate)
                return newDate.description
            case .Mage:
                let newDate =  self.dateFormatAdapter.add(days: 18, startDate: currentDate)
                return newDate.description
            default:
                let newDate =  self.dateFormatAdapter.add(days: 21, startDate: currentDate)
                return newDate.description
            }
        }
        return ""
    }
    
    func getEmblemForDate(date:String) -> Emblems {
        var baseDate = dateFormatAdapter.date(isoStringDate: baseDateStringFighterEmblem)
        let emblemsArray = [Emblems.Fighter, Emblems.Support, Emblems.MarksMan, Emblems.Tank, Emblems.Jungle, Emblems.Assassin, Emblems.Mage]
        let dateForEmblem = dateFormatAdapter.date(isoStringDate: date)
        var currentEmblemIndex = 0
        var currentEmblem = Emblems.Fighter
        var days = 0
        while(baseDate < dateForEmblem) {
            days += 1
            if( days % 3 == 0) {
                currentEmblemIndex = (currentEmblemIndex + 1) % emblemsArray.count
                currentEmblem = emblemsArray[currentEmblemIndex]
            }
            
            baseDate = dateFormatAdapter.add(days: days, startDate: baseDateStringFighterEmblem)
        }
        return currentEmblem
        
    }
}

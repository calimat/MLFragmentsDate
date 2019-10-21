import Foundation

class EmblemDater {
   
    let dateFormatAdapter: DateFormaterAdapter
    
    init(dateFromatAdapter: DateFormaterAdapter) {
        self.dateFormatAdapter = dateFromatAdapter
    }
    
    func getNextAvailableDateFor(emblem:Emblems, currentDate:String) -> String {
       
        let baseDateFighterEmblem = "2019-10-18T03:00:00-0500"
        if currentDate == baseDateFighterEmblem {
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
        return .Fighter
    }
}

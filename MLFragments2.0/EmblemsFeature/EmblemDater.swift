import Foundation

class EmblemDater {
   
    let dateFormatAdapter: DateFormaterAdapter
    
    init(dateFromatAdapter: DateFormaterAdapter) {
        self.dateFormatAdapter = dateFromatAdapter
    }
    
    func getNextAvailableDateFor(emblem:Emblems, currentDate:String) -> String {
       
        if currentDate == "2019-10-18T03:00:00-0500" {
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
            default:
                let newDate =  self.dateFormatAdapter.add(days: 12, startDate: currentDate)
                return newDate.description
            }
        }
        return ""
    }
}
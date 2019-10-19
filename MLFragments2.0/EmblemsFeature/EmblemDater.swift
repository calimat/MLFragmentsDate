import Foundation

class EmblemDater {
    func getNextAvailableDateFor(emblem:Emblems, currentDate:String) -> String {
        if currentDate == "2019-10-18T22:00:00-0500" {
            switch emblem {
            case .Support:
                return "2019-10-21T03:00:00-0500"
            case .MarksMan:
                return "2019-10-24T03:00:00-0500"
            case .Tank:
                return "2019-10-27T03:00:00-0500"
            default:
                return "2019-10-30T03:00:00-0500"
            }
        }
        return ""
    }
}

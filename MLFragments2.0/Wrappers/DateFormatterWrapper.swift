import Foundation

class DateFormatterWrapper : DateFormaterAdapter {
    func date(isoStringDate: String) -> Date {
        let dateFormatter = ISO8601DateFormatter()
        let date = dateFormatter.date(from:isoStringDate)!
        return date
    }
    
    func add(days:Int, startDate:String) -> Date {
        let date = self.date(isoStringDate: startDate)
        let newDate = date.addingTimeInterval(TimeInterval(days * 60 * 60 * 24))
        return newDate
    }
    func string(date: Date) -> String {
        return "1970-01-01T07:00:00-0500"
    }
}

import Foundation

class DateFormatterWrapper : DateFormaterAdapter {
    func convert(isoStringDate: String) -> Date {
        let dateFormatter = ISO8601DateFormatter()
        let date = dateFormatter.date(from:isoStringDate)!
        return date
    }
    
    func add(days:Int, startDate:String) -> Date {
        let date = convert(isoStringDate: startDate)
        let newDate = date.addingTimeInterval(TimeInterval(days * 60 * 60 * 24))
        return newDate
    }
}
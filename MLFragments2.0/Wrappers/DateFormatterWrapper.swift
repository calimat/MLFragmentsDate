import Foundation

public class DateFormatterWrapper : DateFormaterAdapter {
    public init() {
        
    }
    public func date(isoStringDate: String) -> Date {
        let dateFormatter = ISO8601DateFormatter()
        let date = dateFormatter.date(from:isoStringDate)!
        return date
    }
    
    public func add(days:Int, startDate:String) -> Date {
        let date = self.date(isoStringDate: startDate)
        let newDate = date.addingTimeInterval(TimeInterval(days * 60 * 60 * 24))
        return newDate
    }
    public func string(date: Date) -> String {
        let dateFormatter = ISO8601DateFormatter()
         dateFormatter.timeZone = TimeZone(abbreviation: "GMT-5")
        dateFormatter.formatOptions = [.withInternetDateTime, .withDashSeparatorInDate, .withColonSeparatorInTime, .withColonSeparatorInTimeZone, .withFullTime]
        let stringDate = dateFormatter.string(from: date)
        return stringDate
    }
}

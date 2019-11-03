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
    
    public func add(hours: Int, startDate: String) -> Date {
        let date = self.date(isoStringDate: startDate)
        let newDate = date.addingTimeInterval(TimeInterval(hours * 60 * 60 ))
        return newDate
    }
    
    public func string(date: Date) -> String {
        let dateFormatter = ISO8601DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT-5")
        dateFormatter.formatOptions = [.withInternetDateTime, .withDashSeparatorInDate, .withColonSeparatorInTime, .withColonSeparatorInTimeZone]
        let stringDate = dateFormatter.string(from: date)
        return stringDate
    }
    
    public func getFriendlyDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .short
        let stringDate = dateFormatter.string(from: date)
        return stringDate
    }
}

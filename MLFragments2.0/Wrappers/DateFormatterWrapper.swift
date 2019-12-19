import Foundation

public class DateFormatterWrapper : DateFormaterAdapter {
    let isoDateFormatter: ISO8601DateFormatter
    let dateFormatter: DateFormatter
    
    public init() {
         isoDateFormatter = ISO8601DateFormatter()
         isoDateFormatter.timeZone = TimeZone(abbreviation: "COT")!
         dateFormatter = DateFormatter()
         dateFormatter.timeZone = TimeZone(abbreviation: "COT")!
    }
    
    public func date(isoStringDate: String) -> Date {
        let date = isoDateFormatter.date(from:isoStringDate)!
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
        isoDateFormatter.formatOptions = [.withInternetDateTime, .withDashSeparatorInDate, .withColonSeparatorInTime, .withColonSeparatorInTimeZone]
        let stringDate = isoDateFormatter.string(from: date)
        return stringDate
    }
    
    public func getFriendlyDate(date: Date) -> String {
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .short
        let stringDate = dateFormatter.string(from: date)
        return stringDate
    }
}

public class CalendarWrapper: CalendarAdapter {
    public init() {
        
    }
    public func isDate(date1:Date, inSameDayAs date2:Date) -> Bool {
        var calendar = Calendar(identifier: .gregorian)
        let nyTimeZone = TimeZone(identifier: "GMT-5")
        calendar.timeZone = nyTimeZone!
        return calendar.isDate(date1, inSameDayAs: date2)
    }
    
    public func date(bySettingHour hour: Int, minute: Int, second: Int, of date: Date) -> Date {
        var calendar = Calendar(identifier: .gregorian)
        let nyTimeZone = TimeZone(identifier: "GMT-5")
        calendar.timeZone = nyTimeZone!
        return calendar.date(bySettingHour: hour, minute: minute, second: second, of: date)!
     }
    
}

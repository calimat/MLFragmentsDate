public class CalendarWrapper: CalendarAdapter {
    var calendar:Calendar
    public init() {
       calendar = Calendar(identifier: .gregorian)
       calendar.timeZone = BOGOTA_TIMEZONE
    }
    public func isDate(date1:Date, inSameDayAs date2:Date) -> Bool {
        return calendar.isDate(date1, inSameDayAs: date2)
    }
    
    public func date(bySettingHour hour: Int, minute: Int, second: Int, of date: Date) -> Date {
        return calendar.date(bySettingHour: hour, minute: minute, second: second, of: date)!
     }
    
}

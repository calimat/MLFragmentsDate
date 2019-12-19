public class CalendarWrapper: CalendarAdapter {
    public init() {
        
    }
    public func isDate(date1:Date, inSameDayAs date2:Date) -> Bool {
        return Calendar.current.isDate(date1, inSameDayAs: date2)
    }
    
    public func date(bySettingHour hour: Int, minute: Int, second: Int, of date: Date) -> Date {
        
        return Calendar.current.date(bySettingHour: hour, minute: minute, second: second, of: date)!
     }
    
}

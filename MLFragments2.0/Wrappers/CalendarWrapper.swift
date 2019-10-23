public class CalendarWrapper: CalendarAdapter {
    public init() {
        
    }
    public func isDate(date1:Date, inSameDayAs date2:Date) -> Bool {
        return Calendar.current.isDate(date1, inSameDayAs: date2)
    }
}

import Foundation
public protocol CalendarAdapter {
    func isDate(date1:Date, inSameDayAs:Date) -> Bool
    func date(bySettingHour: Int, minute: Int, second: Int, of: Date) -> Date
}

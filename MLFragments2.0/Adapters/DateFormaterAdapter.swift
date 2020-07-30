import Foundation

public protocol DateFormaterAdapter {
    func date(isoStringDate: String) -> Date
    func string(date:Date, withTimezone timezone:TimeZone?) -> String
    func add(days:Int, startDate:String) -> Date
    func add(hours:Int, startDate:String) -> Date
    func getFriendlyDate(date:Date, with Timezone:TimeZone?) -> String
}

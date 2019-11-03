import Foundation

public protocol DateFormaterAdapter {
    func date(isoStringDate: String) -> Date
    func string(date:Date) -> String
    func add(days:Int, startDate:String) -> Date
    func add(hours:Int, startDate:String) -> Date
    func getFriendlyDate(date:Date) -> String
}

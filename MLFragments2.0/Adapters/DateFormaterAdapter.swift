import Foundation

public protocol DateFormaterAdapter {
    func date(isoStringDate: String) -> Date
    func string(date:Date) -> String
    func add(days:Int, startDate:String) -> Date
}

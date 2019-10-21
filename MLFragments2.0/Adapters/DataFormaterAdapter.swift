import Foundation

protocol DateFormaterAdapter {
    func date(isoStringDate: String) -> Date
    func add(days:Int, startDate:String) -> Date
}

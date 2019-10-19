import Foundation

protocol DateFormaterAdapter {
    func convert(isoStringDate: String) -> Date
    func add(days:Int, startDate:String) -> Date
}

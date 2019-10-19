import Foundation

protocol DataFormaterAdapter {
    func convert(isoStringDate: String) -> Date
    func add(days:Int, startDate:String) -> Date
}

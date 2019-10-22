public enum Emblems: String,  CaseIterable  {
    case Fighter
    case Support
    case MarksMan
    case Tank
    case Jungle
    case Assassin
    case Mage
}

public let emblemsRawValueArray = Emblems.allCases.map { $0.rawValue }



import Foundation
import CoreData

public enum StoreInfo {

	public typealias Options = [String : AnyObject]

	case memory(options: Options?)
	case sql(options: Options?, url: URL)
	case binary(options: Options?, url: URL)
}

extension StoreInfo {

	var type: String {
		switch self {
			case .memory: return NSInMemoryStoreType
			case .sql: return NSSQLiteStoreType
			case .binary: return NSBinaryStoreType
		}
	}

	var url: URL? {
		switch self {
			case .memory: return nil
			case .sql(_, let URL): return URL
			case .binary(_, let URL): return URL
		}
	}

	var options: Options? {
		switch self {
			case .memory(let options): return options
			case .sql(let options, _): return options
			case .binary(let options, _): return options
		}
	}
}

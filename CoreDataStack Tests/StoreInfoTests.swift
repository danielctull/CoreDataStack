
import XCTest
import CoreData
@testable import CoreDataStack

class StoreInfoTests: XCTestCase {

	func testMemory() {
		let info = StoreInfo.memory(options: nil)
		XCTAssertEqual(info.type, NSInMemoryStoreType)
		XCTAssertNil(info.options)
		XCTAssertNil(info.url)
	}

	func testSQL() {
		let url = URL(string: "http://test.com")!
		let info = StoreInfo.sql(options: nil, url: url)
		XCTAssertEqual(info.type, NSSQLiteStoreType)
		XCTAssertNil(info.options)
		XCTAssertEqual(info.url, url)
	}

	func testBinary() {
		let url = URL(string: "http://test.com")!
		let info = StoreInfo.binary(options: nil, url: url)
		XCTAssertEqual(info.type, NSBinaryStoreType)
		XCTAssertNil(info.options)
		XCTAssertEqual(info.url, url)
	}



}


import XCTest
import CoreDataStack

class ModelInfoTests: XCTestCase {

	func testModelInfo() {
		let url = URL(string: "http://test.com")!
		let info = ModelInfo(url: url)
		XCTAssertEqual(info.url, url)
		XCTAssertNil(info.configuration)
	}

	func testConfiguration() {
		let url = URL(string: "http://test.com")!
		let configuration = "Configuration"
		let info = ModelInfo(url: url, configuration: configuration)
		XCTAssertEqual(info.url, url)
		XCTAssertEqual(info.configuration, configuration)
	}
}

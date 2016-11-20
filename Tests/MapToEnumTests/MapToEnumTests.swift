import XCTest
@testable import MapToEnum

class MapToEnumTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(MapToEnum().text, "Hello, World!")
    }


    static var allTests : [(String, (MapToEnumTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}

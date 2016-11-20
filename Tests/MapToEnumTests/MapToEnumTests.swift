import XCTest
@testable import MapToEnum

class MapToEnumTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //XCTAssertEqual(MapToEnum().text, "Hello, World!")

        let arr:[String:Any] = ["Id": 1, "Name": "Record #1"]

        let map = Map.link(arr, and: Field.self)

        let data = Item()
        data.Id <- map[.Id]
        data.Name <- map[.Name]

        XCTAssertEqual(data.Id, 1)
        XCTAssertEqual(data.Name, "Record #1")
    }

    public class Item {
        var Id: Int?
        var Name: String?
    }

    public enum Field : String {
        case Id, Name
    }

    static var allTests : [(String, (MapToEnumTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}

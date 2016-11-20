# MapToEnum

```swift
    // simple data representation
    public class Item {
        var Id: Int?
        var Name: String?
    }
    
    // field enumerator
    public enum Field : String {
        case Id, Name
    }

    // json as dictionary representation
    let arr:[String:Any] = ["Id": 1, "Name": "Record #1"]

    // link dictionary and enum
    let map = Map.link(arr, and: Field.self)

    // create data object
    let data = Item()
    
    // set value
    data.Id <- map[.Id]
    data.Name <- map[.Name]

```
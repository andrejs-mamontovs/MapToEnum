public class Map {
    public class func link<T>(_ arr: [String:Any], and e: T.Type) -> Linker<T> {
        return Linker<T>(data: arr)
    }
}

public class Linker<T:RawRepresentable>{

    let data: [String:Any]
    init(data: [String:Any]) {
        self.data = data;
    }
    
    func getValue(_ value: T) -> Any? {
        return data[value.rawValue as! String]
    }

    public func get<O>(_ name: T) -> O? {
        return getValue(name) as? O
    }
    
    public subscript(name: T) -> Any? {
        get {
            return getValue(name)
        }
    }
}

infix operator <-;

public func <- <T>(f: inout T?, v: Any?) {
    if let i = v as? T {
        f = i;
    }
}
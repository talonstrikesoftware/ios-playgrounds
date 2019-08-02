// 1 - enable dot syntax for custom subscripts
@dynamicMemberLookup
class File {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    // 2 - create a subscript to return the defaut or custom path for File
    static subscript(key: String) -> String {
        switch key {
        case "path":
            return "custom path"
        default:
            return "default path"
        }
    }
    
    // 3 - a class version of 2
    class subscript(dynamicMember key: String) -> String {
        switch key {
        case "path":
            return "custom path"
        default:
            return "default path"
        }
    }
}

// 4 - exercise the code
File["path"] // custom path
File["PATH"] // default path
File.path
File.PATH


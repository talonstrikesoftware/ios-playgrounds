// Swift 5 - notice how the static methods are declared
//struct Editor {
//    static func reviewGuidelines() {
//        print("Review editing guidelines.")
//    }
//
//    func edit() {
//        Editor.reviewGuidelines() <- see how the static method is called
//        print("Ready for editing!")
//    }
//}
//
//let editor = Editor()
//editor.edit()

// Swift 5.1
struct Editor {
    static func reviewGuidelines() {
        print("Review editing guidelines.")
    }
    
    func edit() {
        Self.reviewGuidelines() // Now you can do it like Ruby!!
        print("Ready for editing!")
    }
}

var editor = Editor()
editor.edit()

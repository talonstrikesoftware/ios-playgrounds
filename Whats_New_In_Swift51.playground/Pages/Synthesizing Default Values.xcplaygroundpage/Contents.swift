// Swift 5
//struct Author {
//    let name: String
//    var tutorialCount: Int
//
//    init(name: String, tutorialCount: Int = 0) { <- here is the use of the default value
//        self.name = name
//        self.tutorialCount = tutorialCount
//    }
//}
//
//let author = Author(name: "George")

// Swift 5.1 - Notice no constructor required
struct Author {
    let name: String
    var tutorialCount = 0
}

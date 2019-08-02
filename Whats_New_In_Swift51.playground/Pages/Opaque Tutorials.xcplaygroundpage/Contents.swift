//1
struct Tutorial: BlogPost {
    let title: String
    let author: String
}

// 2
func createBlogPost(title: String, author: String) -> some BlogPost {
    guard !title.isEmpty && !author.isEmpty else {
        fatalError("No title and/or author assigned!")
    }
    return Tutorial(title: title, author: author)
}

//3
let swift4Tutorial = createBlogPost(title: "What's new in Swift 4.2?", author: "Cosmin Pupaza")
let swift5Tutorial = createBlogPost(title: "What's new in Swift 5?", author: "Cosmin Pupaza")

let sameTutorial = swift4Tutorial == swift5Tutorial

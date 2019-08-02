struct Screencast: BlogPost {
    let title: String
    let author: String
}

func createBlogPost(title: String, author: String) -> some BlogPost {
    guard !title.isEmpty && !author.isEmpty else {
        fatalError("No title and/or author assigned!")
    }
    return Screencast(title: title, author: author)
}

let swift4Screencast = createBlogPost(title: "What's new in Swift 4.2?",
                                      author: "Josh Steele")
let swift5Screencast = createBlogPost(title: "What's new in Swift 5?",
                                      author: "Josh Steele")

let sameScreencast = swift4Screencast == swift5Screencast

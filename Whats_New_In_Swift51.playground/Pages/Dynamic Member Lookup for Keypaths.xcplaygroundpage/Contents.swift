// 1 - declare a Point class with x and y
struct Point {
    let x, y: Int
}

// 2 - annotate the Circle struct to enable dot syntax for subscripts
@dynamicMemberLookup
struct Circle<T> {
    let center: T
    let radius: Int
    
    // 3 - create a generix subscript to use keypaths to access "center" properties
    subscript<U>(dynamicMember keyPath: KeyPath<T, U>) -> U {
        center[keyPath: keyPath]
    }
}

// 4
let center = Point(x: 1, y: 2)
let circle = Circle(center: center, radius: 1)
circle.x
circle.y


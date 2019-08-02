@_functionBuilder // will be changed to @functionBuilder in final release
struct SumBuilder {
    static func buildBlock(_ numbers: Int...) -> Int { // Only required function, other optional functionBuilders are for if, etc
        return numbers.reduce(0, +)
    }
}

// usage of a function builder
func getSum(@SumBuilder builder: () -> Int) -> Int {
    builder()
}

let gcd = getSum {
    8
    12
    5
}

// Usages of this are for SwiftUI and DSLs

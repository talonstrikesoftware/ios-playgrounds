// conversion of tuple types

let temperatures: (Int, Int) = (25, 30)
// This can be done because you can convert [Int, Int] to [Int?, Any]
let convertedTemperatures: (Int?, Any) = temperatures

// tuples with duplicate labels
let point = (coordinate: 1, coordinate: 2)
// now first one wins?
point.coordinate

// Overloading Functions with any Parameters
// Swift 5.0
//func showInfo(_: Any) -> String {
//    return "Any value"
//}
//
//func showInfo<T>(_: T) -> String {
//    return "Generic value"
//}
//
// here showInfo returns "Any Value"
//showInfo("Swift 5")

// Swift 5.1 does it the other way around
func showInfo(_: Any) -> String {
    "Any value"
}

func showInfo<T>(_: T) -> String {
    "Generic value"
}

// Now you get "Generic Value" - the point here is the Generic function wins or what is last wins I'm not sure
showInfo("Swift 5.1")


// Type Aliases for Autoclosure Parameters
// In swift 5.0 this is illegal - note the @autoclosure
//struct Closure<T> {
//    func apply(closure: @autoclosure () -> T) {
//        closure()
//    }
//}

// In 5.1 you may use type aliases in the prototype of apply(closure:) - It is ClosureType that is being used
struct Closure<T> {
    typealias ClosureType = () -> T
    
    func apply(closure:  @autoclosure ClosureType) {
        closure()
    }
}

// Returning Self from Objective-C methods

// In Swift 5.0 you have to inherit from NSObject if your class contains an @objc method
//class Clone: NSObject {
//    @objc func clone() -> Self {
//        return self
//    }
//}

// In Swift 5.1 this is no longer the case
class Clone {
    @objc func clone() -> Self {
        self
    }
}

//Stable ABI Libraries
// You use -enable-library-evolution in Swift 5.1 to make changes to library types without
// breaking its ABI. Structures and enumerations marked as @frozen can’t add, remove or
// reorder stored properties and cases


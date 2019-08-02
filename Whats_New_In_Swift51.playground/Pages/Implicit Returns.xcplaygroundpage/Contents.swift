// Swift 5
//extension Sequence where Element == Int {
//    func addEvenNumbers() -> Int {
//        return reduce(0) { $1.isMultiple(of: 2) ? $0 + $1 : $0 }
//    }
//
//    func addOddNumbers() -> Int {
//        return reduce(0) { $1.isMultiple(of: 2) ? $0 : $0 + $1 }
//    }
//}
//
//let numbers = [10, 5, 2, 7, 4]
//let evenSum = numbers.addEvenNumbers()
//let oddSum = numbers.addOddNumbers()

extension Sequence where Element == Int {
    func addEvenNumbers() -> Int {
        reduce(0) { $1.isMultiple(of: 2) ? $0 + $1 : $0 }  // notice return is no longer required
    }
    
    func addOddNumbers() -> Int {
        reduce(0) { $1.isMultiple(of: 2) ? $0 : $0 + $1 } // notice return is no longer required
    }
}

let numbers = [10, 5, 2, 7, 4]
let evenSum = numbers.addEvenNumbers()
let oddSum = numbers.addOddNumbers()

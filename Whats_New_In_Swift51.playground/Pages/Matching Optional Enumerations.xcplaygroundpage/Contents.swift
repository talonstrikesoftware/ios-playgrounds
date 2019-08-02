// 1 - declare all possible states
enum TutorialStatus {
    case written, edited, published
}

let status: TutorialStatus? = .published
// In swift 5.0
//  2 - Use the optional pattern to switch on status
//switch status {
//case .written?:
//    print("Ready for editing!")
//case .edited?:
//    print("Ready to publish!")
//case .published?:
//    print("Live!")
//case .none:
//    break
//}

// Swift 5.1 removes the optional pattern
switch status {
case .written:
    print("Ready for editing!")
case .edited:
    print("Ready to publish!")
case .published:
    print("Live!")
case .none:
    break
}


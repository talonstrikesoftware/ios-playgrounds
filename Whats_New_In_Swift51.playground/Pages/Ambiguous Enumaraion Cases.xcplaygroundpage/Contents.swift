// 1 - define three different TutorialStyle enums
enum TutorialStyle {
    case cookbook, stepByStep, none
}

// 2 - Swift 5.1 will now show a warning here as this could be Optional.none or TutorialStyle.none
let style: TutorialStyle? = .none

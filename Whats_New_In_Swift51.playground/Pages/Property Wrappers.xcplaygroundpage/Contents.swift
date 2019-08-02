// computed properties in Swift 5
//var settings = ["swift": true, "latestVersion": true]
//
//struct Settings {
//    var isSwift: Bool {
//        get {
//            return settings["swift"] ?? false
//        }
//        set {
//            settings["swift"] = newValue
//        }
//    }
//
//    var isLatestVersion: Bool {
//        get {
//            return settings["latestVersion"] ?? false
//        }
//        set {
//            settings["latestVersion"] = newValue
//        }
//    }
//}
//
//var newSettings = Settings()
//newSettings.isSwift
//newSettings.isLatestVersion
//newSettings.isSwift = false
//newSettings.isLatestVersion = false

// Swift 5.1 - using property wrappers
// 1 - make SettingsWrapper a property wrapper
@propertyWrapper
struct SettingsWrapper {
    let key: String
    let defaultValue: Bool
    
    // 2 - use wrappedValue to get and set key in settings
    var wrappedValue: Bool {
        get {
            settings[key] ?? defaultValue
        }
        set {
            settings[key] = newValue
        }
    }
}

// 3 - makr these two keys as wrappers to wrap with the wrapper
struct Settings {
    @SettingsWrapper(key: "swift", defaultValue: false) var isSwift: Bool
    @SettingsWrapper(key: "latestVersion", defaultValue: false) var isLatestVersion: Bool
}

// 1 - create randomSwitches with an initial capacity of 5
let randomSwitches = Array<String>(unsafeUninitializedCapacity: 5) { // Here is where the uninitialized array is created
    buffer, count in
    // 2 - set each state to a random value
    for i in 0..<5 {
        buffer[i] = Bool.random() ? "on" : "off"
    }
    // 3 - Set the number of initialized elements for randomSwitches
    count = 5
}

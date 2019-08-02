// Swift 5.1 automatically synthesizes Equatable and Hashable for week and unowned stored properties
class Key {
    let note: String
    
    init(note: String) {
        self.note = note
    }
}

extension Key: Hashable {
    static func == (lhs: Key, rhs: Key) -> Bool { // This makes it conform to Equatable
        lhs.note == rhs.note
    }
    
    func hash(into hasher: inout Hasher) { // This gives us Hashable
        hasher.combine(note)
    }
}

class Chord {
    let note: String
    
    init(note: String) {
        self.note = note
    }
}

extension Chord: Hashable {
    static func == (lhs: Chord, rhs: Chord) -> Bool {
        lhs.note == rhs.note
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(note)
    }
}
)

struct Tune: Hashable {
    unowned let key: Key
    weak var chord: Chord?
}

// Tune is now equatable and hashable becuse it's properties are
let key = Key(note: "C")
let chord = Chord(note: "C")
let tune = Tune(key: key, chord: chord)
let chordlessTune = Tune(key: key, chord: nil)
let sameTune = tune == chordlessTune
let tuneSet: Set = [tune, chordlessTune]
let tuneDictionary = [tune: [tune.key.note, tune.chord?.note],
                      chordlessTune: [chordlessTune.key.note,
                                      chordlessTune.chord?.note]]


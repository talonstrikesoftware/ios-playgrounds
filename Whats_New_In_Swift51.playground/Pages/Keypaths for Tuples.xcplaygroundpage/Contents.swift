// 1 - declare struct Instrument with three properties
struct Instrument {
    let brand: String
    let year: Int
    let details: (type: String, pitch: String)
}

// 2 - use it notice how type and pitch are retrieved
let instrument = Instrument(brand: "Roland",
                            year: 2019,
                            details: (type: "acoustic", pitch: "C"))
let type = instrument[keyPath: \Instrument.details.type]
let pitch = instrument[keyPath: \Instrument.details.pitch]


// create two collections
let operatingSystems = ["Yosemite",
                        "El Capitan",
                        "Sierra",
                        "High Sierra",
                        "Mojave",
                        "Catalina"]
var answers = ["Mojave",
               "High Sierra",
               "Sierra",
               "El Capitan",
               "Yosemite",
               "Mavericks"]

#if swift(>=5.1)
let differences = operatingSystems.difference(from: answers) // Get differences between operatingSytems and answers
let sameAnswers = answers.applying(differences) ?? [] // Apply the differences to answers???
// ["Yosemite", "El Capitan", "Sierra", "High Sierra", "Mojave", "Catalina"]
#endif

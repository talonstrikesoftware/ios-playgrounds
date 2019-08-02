// Determine the UTF-8 encoding width of the Unicode scalar value
UTF8.width("S")
// Check to see if the given code unit represents an ASCII scalar
UTF8.isASCII(83)

// contiguous Strings
var string = "Swift 5.1"
// Check to see if the string is contiguous
if !string.isContiguousUTF8 {
    // If not make it so
    print("making string contiguous")
    string.makeContiguousUTF8()
}

print(string)

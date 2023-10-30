import UIKit

var greeting = "Hello, Kate <3"

// https://docs.swift.org/swift-book/documentation/the-swift-programming-language/aboutswift


// MARK: Overflow
// An integer overflow or wraparound when an integer value is incremented to a value that is too large to store in the associated representation.

let max: Int16 = Int16.max
//val + 1 compile time error  -> Arithmetic operation '32767 + 1' (on type 'Int16') results in an overflow
max &+ 1

let min: Int16 = Int16.min
min &- 1

Int8.max.addingReportingOverflow(1)


// MARK: Out-of-bounds
// Array indices are checked for out-of-bounds errors.
// Crash at runtime but it's ok otherwise we can read or write memory that is not allocated by the array. Other languages are not crashing

// MARK: News of Swift 5.9

UInt64(0xffff_ffff_ffff_ffff)

UInt64.max

//some only in 5.1. it's the opaque type
func test() -> some Equatable {
    ""
}

let rrr = test()

func failure() throws -> String? {
    return ""
}
 
let fail: String? = try? failure() //This in swift 4 was not compiling

let fail2: String?? = try? failure() //This in swift 4 was good

print(fail)
print(fail2)

func failure2() -> String? {
    return ""
}

let fail3: String?? = try? failure2()
print(fail3)

// MARK: Implicit conversion

let integ = 1 // Int
let doub = 1.0 // Double

let flo = 2.00 as Float // Float not like java 2f 2d
let flo2: Float = 0xf

let label = "The width is "
let width = 94
let widthLabel = label + width

// Use three double quotation marks (""") for strings that take up multiple lines. Indentation at the start of each quoted line is removed, as long as it matches the indentation of the closing quotation marks. 

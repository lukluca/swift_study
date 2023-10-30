import UIKit

var greeting = "Hello, Kate <3"


//MARK: Overflow
// An integer overflow or wraparound when an integer value is incremented to a value that is too large to store in the associated representation.

let max: Int16 = Int16.max
//val + 1 compile time error  -> Arithmetic operation '32767 + 1' (on type 'Int16') results in an overflow
max &+ 1

let min: Int16 = Int16.min
min &- 1

Int8.max.addingReportingOverflow(1)


//MARK: Out-of-bounds
// Array indices are checked for out-of-bounds errors.
// Crash at runtime but it's ok otherwise we can read or write memory that is not allocated by the array. Other languages are not crashing

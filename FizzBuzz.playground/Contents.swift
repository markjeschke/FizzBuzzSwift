import UIKit

// Fizz Buzz example in Swift

// Set the maximum count. Set its current value to 10.

var maxCount = 10
print("maxCount: \(maxCount)\n")

// 1. Increment 1 in `x` until it reaches its maxCount. In this case, it's 10.
// 2. If x is divisible by 3 and 5, without a remainder (== 0), print "fizz buzz."
// 3. If x is divisible by 3, without a remainder (== 0), print "fizz."
// 4. If x is divisible by 5, without a remainder (== 0), print "buzz."
// 5. If none of the conditions in 2-4 are met, then simply display the value of x.

// FYI: The following C-style statement is deprecated: `for var x:Int=0; x < maxCount; x++`
// Use `for x:Int in 0 ... maxCount` for Swift 2.2 and 3 instead.

    // 1
for x:Int in 0 ..< maxCount {
    // 2
    if x % 3 == 0 && x % 5 == 0 {
        print("\(x): fizz buzz")
    // 3
    } else if x % 3 == 0 {
        print("\(x): fizz")
    // 4
    } else if x % 5 == 0 {
        print("\(x): buzz")
    // 5
    } else {
        print(x)
    }
}

print("\ndetectFizzBuzz function:\n")

// If you'd like to put this fizz buzz calcuation into a method, here's an example with default values applied. This is necessary, if argument values are not entered into the method call.

func detectFizzBuzz( fizz:Int = 3, buzz:Int = 5, maxCount:Int = 100) {
        // 1
    for x:Int in 0 ..< maxCount {
        // 2
        if x % fizz == 0 && x % buzz == 0 {
            print("\(x): fizz buzz")
        // 3
        } else if x % fizz == 0 {
            print("\(x): fizz")
        // 4
        } else if x % buzz == 0 {
            print("\(x): buzz")
        // 5
        } else {
            print(x)
        }
    }
}

// Call the method and pass in the values for fizz, buzz and maxCount arguments.

detectFizzBuzz(3, buzz: 5, maxCount: 50)

// Change the argument values and see how it affects the fizz/buzz calculation.

// More examples:

//detectFizzBuzz(2, buzz: 7, maxCount: 1000)
//detectFizzBuzz()


# FizzBuzzSwift

Swift Playground that demonstrates how to code the Fizz Buzz algorithm. I created this coding exercise to prepare for an iOS technical job interview. I hope that you find this helpful.

```swift
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
```
##### Output result:
```swift
maxCount: 10

0: fizz buzz
1
2
3: fizz
4
5: buzz
6: fizz
7
8
9: fizz
```
##### Here's the fizz buzz calculation within a function that accepts new fizz, buzz, and maxCount values.

```swift
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
```
##### Call the method.
```swift
detectFizzBuzz(3, buzz: 5, maxCount: 50)
```
##### More examples:
```swift
detectFizzBuzz(2, buzz: 7, maxCount: 1000)
```
or 
```swift
detectFizzBuzz() // <- This will provide the default values of fizz: 3, buzz: 5, maxCount: 100
```

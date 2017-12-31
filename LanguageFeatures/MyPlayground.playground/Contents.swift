//: Playing with basic language features.

import UIKit

// Variables
var str = "Hello, playground"
var i = 10
// Declare a constant.
let daysInWeek = 7
var d: Double
d = 10.0
var anInt: Int
anInt = Int(d)

// A Basic function.
func square(x: Int) -> Int {
    return x * x
}

square(x: i)

// Switch Statement
let age = 90

switch age {
case 10,20,30,40,50,60,70,80,90,100:
    print("You survived another decade!")
case 16:
    print("You can drive.")
case 21:
    print("You're a proper adult!")
case 65:
    print("Time to retire")
case 101...1000:
    print("Every year is special!")
default:
    print("You're not a special age!")
}

// Loops
var nums: [Int] = []
var counter = 0

while counter < 10 {
    counter += 1
    nums.append(counter)
}

print(nums)

var nums2: [Int] = []
var counter2 = 0

repeat {
    counter2 += 1
    nums2.append(counter2)
} while counter2 < 1

print(nums2)

let family = ["Sally", "Simon", "Sid", "Samantha", "Sauron", "Smatt", "Susan"]

for p in family {
    print(p)
}

var numSum = 0
for num in 1...100 {
    numSum += num
}

numSum

// The sequence 1...100 is inclusive
// 1..<100 is 1...99

numSum = 0
for num in stride(from: 1, through: 100, by: 2) {
    numSum += num
}

numSum

// String Interpolation
var stringInterpolation = "This is how you interpolate a string \(numSum + 10)"

// Tuples
let tup = ("Josh", 6)
let tup2: (String, Int)
tup2 = tup
let namedTuple = (errorCode: 404, message: "File not found")
let (errorCode, errorMessage) = namedTuple

print("Error \(namedTuple.0): \(namedTuple.message)")
print("Error \(errorCode): \(errorMessage)")


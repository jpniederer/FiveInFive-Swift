//: Rosetta Code Playground

import UIKit

// Variables
var x = 42
var y = 2

// Arrays
var words = ["hi", "hello", "howdy"]

// Basic function
func logThenReturn(ws: [String]) -> [String] {
    print(ws)
    return ws
}

var sameWords = logThenReturn(ws: words)

// Equality check
sameWords == words

// Tuple
var t: (String, Int)
t = ("key", 6)
t.0
t.1

// Loops
var numbers: [Int] = []
for num in 0..<10 {
    numbers.append(num + 1)
}

for n in numbers {
    print(n)
}

let countTo = 10
var currentCount = 1

while currentCount < countTo {
    print(currentCount)
    currentCount += 1
}

// Recursion
func power(x: Int, y: Int) -> Int {
    func powerIter(x: Int, y: Int, total: Int) -> Int {
        if y <= 0 {
            return total
        }
        
        return powerIter(x: x, y: y - 1, total: total * x)
    }
    return powerIter(x: x, y: y, total: 1)
}

power(x: 10, y: 10)
power(x: 2, y: 10)

func fib(n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    }
    else {
        return fib(n: n - 1) + fib(n: n - 2)
    }
}

func betterFib(n: Int) -> Int {
    var curr = 1
    var prev = 0
    var count = n
    
    if n == 0 || n == 1 {
        return n
    }
    
    while count > 1 {
        let temp = curr
        count -= 1
        curr = prev + curr
        prev = temp
    }
    
    return curr
}

fib(n: 7)
betterFib(n: 7)

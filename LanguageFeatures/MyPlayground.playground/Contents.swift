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


// Structs
struct Item {
    var name: String
    var purchasePrice: Float
    var salesPrice: Float
    var stock: Int
    
    func getMarkupPrice() -> Float {
        return salesPrice - purchasePrice
    }
    
    func getMarkupPercentage() -> Float {
        return 100 * (getMarkupPrice() / purchasePrice)
    }
    
    func has() -> Bool {
        return stock > 0
    }
}

var item1 = Item(name: "MacBook Pro", purchasePrice: 1500.0, salesPrice: 1800.0, stock: 10)
var item2 = Item(name: "iPad Pro", purchasePrice: 400.0, salesPrice: 800.0, stock: 8)
var item3 = Item(name: "iPad Pro 12.9", purchasePrice: 600.0, salesPrice: 1000.0, stock: 3)
var item4 = Item(name: "iPad", purchasePrice: 100.0, salesPrice: 300.0, stock: 80)
var item5 = Item(name: "MacBook", purchasePrice: 1000.0, salesPrice: 1500.0, stock: 0)

item1.has()
item2.has()
item2.getMarkupPrice()
item2.getMarkupPercentage()

var items: [Item] = [item1, item2, item3, item4, item5]

// Using a closure to sort the items by salesPrice, cheapest items first.
var itemsOrderedByPrice = items.sorted(by: {i1, i2 in i1.salesPrice < i2.salesPrice })

itemsOrderedByPrice

// Classes
class Person {
    var firstName: String
    var lastName: String
    var birthDate: Date
    var timeCreated: Date
    
    init(firstName: String, lastName: String, birthDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.timeCreated = Date()
    }
    
    func getAge() -> Int {
        let now = Date()
        let calendar = Calendar.current
        let month = calendar.component(.month, from: now)
        let day = calendar.component(.day, from: now)
        let year = calendar.component(.year, from: now)
        let birthMonth = calendar.component(.month, from: self.birthDate)
        let birthDay = calendar.component(.day, from: self.birthDate)
        let birthYear = calendar.component(.year, from: self.birthDate)
        
        if month < birthMonth {
            return year - birthYear - 1
        }
        else if month > birthMonth {
            return year - birthYear
        }
        else {
            if day < birthDay {
                return year - birthYear - 1
            }
            else {
                return year - birthYear
            }
        }
    }
}

var calendar = Calendar.current
var dc = DateComponents()
dc.year = 1995
dc.month = 1
dc.day = 3
var date = calendar.date(from: dc)!
var p = Person(firstName: "Ron", lastName: "Weasley", birthDate: date)
p
p.getAge()





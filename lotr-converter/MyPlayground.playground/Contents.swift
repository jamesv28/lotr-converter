import UIKit

// conditional statements
var temperature = 99

if temperature > 100 {
    print("It's hot!")
} else if temperature > 49 && temperature < 80 {
    print("the temperature \(temperature) is between 49 and 80")
} else {
    print("It's not hot!")
}

// switch statements
var dayOfTheWeek = 3

switch dayOfTheWeek {
case 1:
    print("Monday")
default:
    print("I do not know what day of the week it is")
}

// loops

// for in loop
var fruits = ["apple", "banana", "cherry"]

for fruti in fruits {
    print(fruits)
}

let languages = ["Swift", "Go", "Java", "Kotlin"]
for language in languages where language != "Java" {
    print(language)
}


// functions

func greet() {
    print("hello")
}

greet()

func ageAndName(name: String, age: Int) -> String {
    return "\(name) is \(age) years old"
}

ageAndName(name: "John Does", age: 22)

// closures
let add: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
    return a + b
}

let multiply: (Int, Int) -> Int = {$0 * $1}
let result = multiply(4,6)
print(result)

var name: String?
print(name ?? "james")


// force unwrapping
var city: String?
// print(city!)

let newName: String? = "james volmert"

let newResult = newName.map { $0.count}
print(newResult)

// associated types - generics
let newNameArray = ["Alex", "james", "jack"]

func firstElement<T>(_ array: [T]) -> T? {
    array.first
}

if let firstName = firstElement(newNameArray) {
    print(firstName)
}

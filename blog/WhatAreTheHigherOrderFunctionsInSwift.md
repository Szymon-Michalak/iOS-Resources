---
slug: WhatAreTheHigherOrderFunctionsInSwift
title: What are the higher order functions in Swift?
authors: [szymon]
tags: [swift]
---

In mathematics and computer science, a higher-order function is a function that takes one or more functions as arguments or returns a function.

Functional programming is a programming paradigm in which we try to leverage these higher-order functions.

Let's say you wanted to create a function to double all of the numbers in an array. You might write something like this:
```swift
var input = [ 1 , 2 , 3 , 4 , 5 ]

for i in 0 ..<input.count {
input[i] = input[i] * 2
}

// `input` now equals [2, 4, 6, 8, 10]
```

However, we've immediately run into a problem. What happens if we want to access the original values ininput? We can no longer retrievethose values.

By changinginput, we’ve used imperative programmingwhich is a paradigm in which executed statements change the state of the program. In contrast, functional programming ensures that no changes are made to the existing state of the application and no side-effects are introduced.

You'll be able to find a more rigorous mathematical definition of functional programming elsewhere, but simply speaking the goal is:


- Avoid mutability wherever possible.
- Use functions as the building blocks of functionality. In other words, try to compose functions wherever possible.
- Create pure functions (a pure function is a function that will always produce the same result for the same input regardless of when and where it is being called from).

Simply put, in imperative programming, changing the variable's state and introducing side effects is permissible, but in functional programming it is not.


You'll notice that in all of the following examples, theinputvariable's values are never changed which allows us to satisfy the immutability requirement. Instead, all of these function calls return a completely new value.

```swift
.map {}
// map: Applies a function to every element in the input and returns
// a new output array.
let input = [ 1 , 2 , 3 , 4 , 5 , 6 ]

// We'll take every number in the input, double it, and return it in a new
// array.
//
// Notice that the input array is never modified.
//
// Output: [2, 4, 6, 8, 10, 12]
// $0 refers to the current element in the input array `map` is operating on.
let mapOutput = input.map { $ 0 * 2 }

.compactMap {}
// compactMap: Works the same way as map does, but it removes nil values.
let input = ["1", "2", "3", "4.04", "aryamansharda"]

// We'll try and convert each String in `input` into a Double.
//
// Notice that the input array is never modified and the values that resolve
// to nil are not included in the output.
//
// compactMap is often used to convert one type to another.
// Output: [1.0, 2.0, 3.0, 4.04]
let compactMapOutput = input.compactMap { Double($ 0 ) }

.flatMap {}
// flatMap: Use this method to receive a flattened collection from an
// input that may have several nested structures.
let input = [[ 1 ], [ 2 , 2 ], [ 3 , 3 , 3 ], [ 4 , 4 , 4 , 4 ]]

// This will flatten our array of arrays into just a single array.
// Output: [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]
let flatMapOutput = input.flatMap { $ 0 }

.reduce {}
// reduce: Allows you to produce a single value from the elements in
// a sequence.

let input = [ 1 , 2 , 3 , 4 ]

// This will add up all of the numbers in the sequence.
// `sum` will be 10
let sum = input.reduce( 0 , { x, y in
x + y
})

// You can also write this more simply as:
let sum = input.reduce( 0 , +)
// `sum` will be 10

.filter {}
// filter: Returns an array containing only the elements of the sequence
// that satisfies some constraint(s) while preserving order.
let input = [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 ]

// This will only return the even numbers.
// Output: [2, 4, 6, 8, 10]
let filterOutput = input.filter { $ 0 % 2 == 0 }

.forEach {}
// forEach: Calls the given closure on each element in the sequence in the
// same order as a for-loop.
let input = [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 ]

// This will print out the numbers in `input` just like a traditional
for-loop.
input.forEach {
print($ 0 )
}
```

When you use `forEach` it is guaranteed to go throughall items in sequence order, but `map` is free to process items in any order.

```swift
.sorted {}
// sorted: Returns the elements of the sequence, sorted using the
// custom sorting logic you specify.
let input = [ 1 , 2 , 3 , 4 , 5 , 6 , 7 , 8 , 9 , 10 ]

// This will create an array with the numbers sorted in descending order.
// Output: [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

let sortedInput = input.sorted(by: { $ 0 > $ 1 })
```

These functions can be applied to objects of any type - even custom ones. In addition, combining these calls can deliver impressive functionality with very little code:

```swift
// We'll create an array of Cars and specify some basic properties.
struct Car {
let name: String
let horsepower: Int
let price: Int
}

var cars = [Car?]()
cars.append(Car(name: "Porsche 718", horsepower: 300 , price: 60500 ))
cars.append(Car(name: "Porsche 911", horsepower: 379 , price: 101200 ))
cars.append(nil)
cars.append(Car(name: "Porsche Taycan", horsepower: 402 , price: 79900 ))
cars.append(Car(name: "Porsche Panamera", horsepower: 325 , price: 87200 ))
cars.append(nil)
cars.append(nil)
cars.append(Car(name: "Porsche Macan", horsepower: 248 , price: 52100 ))
cars.append(Car(name: "Porsche Cayenne", horsepower: 335 , price: 67500 ))

// Let's return valid cars (not nil) that have a horsepower greater than 300
// and are sorted by descending price.
cars.compactMap { $ 0 }
.filter { $ 0 .horsepower > 300 }
.sorted { $ 0 .price > $ 1 .price }
.forEach { print($ 0 ) }

// Output:
Car(name: "Porsche 911", horsepower: 379 , price: 101200 )
Car(name: "Porsche Panamera", horsepower: 325 , price: 87200 )
Car(name: "Porsche Taycan", horsepower: 402 , price: 79900 )
Car(name: "Porsche Cayenne", horsepower: 335 , price: 67500 )
```
Functional programming in iOS is becoming more and more mainstream and is critical to the SwiftUI and Combine implementations. Levering these language features and programming paradigms correctly allows you to write optimized, thread-safe, easily testable, and readable code.

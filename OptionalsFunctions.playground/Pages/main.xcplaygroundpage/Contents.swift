/*: Outline
 
 
 # Optionals & Functions
 
 ### Readings associated with this lab
 
 * [Optionals](https://github.com/learn-co-curriculum/swift-optionals-readme)
 * [Optionals & Functions](https://github.com/learn-co-curriculum/swift-optionalFunc-readme)
 

 */
/*: question1
 ### 1. What is the type of the variable `petName` declared below? What is its value?
 */
var petName = "Scooter the Turtle 🐢"

// It's type String. Value is Scooter the Turtle 🐢.
/*: question2
 ### 2. What is the type of the variable `otherPetName` declared below? What is its value?
 */
var otherPetName: String?

// otherPetName's type is Optional String.
/*: question3
 ### 3. What is the _current value_ of `otherPetName`?
 */
// otherPetName is currently nil.
/*: question4
 ### 4. What is the type of the variable `thirdPetName` declared below? What is its value?
 */
var thirdPetName: String?

// thirdPetName is an Optional String with a value of nil.
/*: question5
 ### 5. Assign a value to `thirdPetName`. What type of values can you assign to `thirdPetName`? After assigning a value, what is its type?
 */
thirdPetName = "Dakota"

// It is type Optional String.
/*: question6
 ### 6. Print `thirdPetName` to the console using Swift's `print()` function. What do you expect to see in the console?
 */
print(thirdPetName)

// I expect to see an Optional type error.
// You should see Optional("Scooter the Turtle 🐢") in the console. Since that is a String representation of an Optional String.
/*: question7
 ### 7. Write an if statement that will print _just_ the value of `thirdPetName` to the console, without all the **Optional(...)** stuff.
 */
if let petName = thirdPetName {
    print(petName)
}
/*: question8
 ### 8. Write a function called `printPetName` that takes a pet's name as a parameter. It should print the pet's name if the pet name exists, or "There is no pet name!" if the pet's name does not exist.
 */
func printPetName(pName: String?) {
    if let pName = pName {
        print(pName)
    } else {
        print("There is no pet name!")
    }
}

printPetName(pName: "Dolly")
printPetName(pName: nil)
/*: question9
 ### 9. Call `printPetName` with `thirdPetName`. Then call it again with `otherPetName`. What do you expect to see in the console?
 */
printPetName(pName: thirdPetName)
// Prints "Dakota."

printPetName(pName: otherPetName)
// Prints "There is no pet name!"
/*: question10
 ### 10. Write a function called `minimum`. `minimum` should take a list of `Int`s and return the minimum one in the bunch. For now, don't deal with the possibility of an empty array; assume the array passed to `minimum` always has one item. What should the return type of `minimum` be?
 */
func minimum(items: [Int]) -> Int {
    var min = items[0]
    let rest = items.dropFirst()
    
    for item in rest {
        if item < min {
            min = item
        }
    }
    
    return min
}
/*: question11
 ### 11. Call your `minimum` function with the following array. What value do you expect to get back? What value did you get back?
 */
let values1 = [4, 12, 3, 2, 9, 14, 11]
minimum(items: values1)
/*: question12
 ### 12. Call your `minimum` function with the following empty array. What happens when you call your function?
 */
let values2: [Int] = []
// write your code here

// minimum(items: values2)

// When you pass in an empty array, you get an error.
/*: question13
 ### 13. Write a new function, `maybeMinimum`. It should handle cases in which the array passed to it is empty. If the array is empty, `nil` should be returned; otherwise, the smallest `Int` in the array should be returned. What should the return type of `maybeMinimum` be? (Note: So far, you haven't seen anything other than optional `String`s. Do you expect other optional types, such as `Int`s, to be handled differently?)
 */
// write your code here

func maybeMinimum(items: [Int]) -> Int? {
    if items.isEmpty {
        return nil
    }
    
    var min = items[0]
    let rest = items.dropFirst()
    
    for item in rest {
        if item < min {
            min = item
        }
    }
    
    return min
}
/*: question14
 ### 14. Call `maybeMinum` with `values1`. What do you expect the return value to be?
 */
maybeMinimum(items: values1)
// It should be 2 since the smallest value is 2.
/*: question15
 ### 15. Call `maybeMinum` with `values2`, an empty array. What do you expect the return value to be?
 */
 maybeMinimum(items: values2)

// The value should be nil since it's an empty array.
//: Click [here](https://github.com/learn-co-curriculum/swift-OptionalsNFunctions-lab/blob/solution/OptionalsFunctions.playground/Pages/solution.xcplaygroundpage/Contents.swift) to see the solution on GitHub.

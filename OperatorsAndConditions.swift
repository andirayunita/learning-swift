print("================================================")
print("Operators and Conditions")
print("================================================")

// arithmetic opeators
// attention: can’t add(+) an Int and a Double, can’t multiply(*) a Float and an Int, so on
print("\n====Arithmetic Operators====")
let firstScore = 12
let secondScore = 4

let difference = firstScore - secondScore
print(difference)

let total = firstScore + secondScore
print(total)

let product = firstScore * secondScore
print(product)

let divided = firstScore / secondScore
print(divided)

let remainder = 13 % secondScore
print(remainder)

let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")


//--------------------------------------------------------------------------------------------


// operators overloading: + sums integers, + join strings, and + join arrays
print("\n====Operators Overloading====")
let meaningOfLife = 42
let doubleMeaning = 42 + 42
print(doubleMeaning)

let fakers = "Fakers gonna "
let action = fakers + "fake"
print(action)

let junkFood = ["Pizza", "Burger"]
let anotherJunkFood = ["Spaghetti", "French Fries"]
let notHealthy = junkFood + anotherJunkFood
print(notHealthy)

var flowers = ["Red Roses", "Sunflowers"] + ["White Roses"]
print(flowers)


//--------------------------------------------------------------------------------------------

// compound operators: +=, -=, *=, etc
print("\n====Compound Operators====")

var score = 95
score -= 5
print(score)

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
print(quote)


//--------------------------------------------------------------------------------------------

// comparison operators: ==, !=, <, >, <=, >=
print("\n====Comparison Operators====")

let first = 6
let last = 4
print(first == last)   //false
print(first != last)   //true
print(first < last)    //false
print(first >= last)   //true

// also works on strings
print("Justin" <= "Bieber")   //false

let someDate = 13
let someOtherDate = 20
print(someDate < someOtherDate)   //true

enum starbucksSizes: Comparable {
    case tall
    case grande
    case venti
}
let one = starbucksSizes.tall
let two = starbucksSizes.venti
print(one < two)   //true
print("================================================")
print("Operators and Conditions")
print("================================================")

// arithmetic operators
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


//--------------------------------------------------------------------------------------------

// conditions statements: if-else, if-else-if-else
print("\n====Conditional Statements====")

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Just regular cards.")
}


//--------------------------------------------------------------------------------------------

// combining operators: && and, || OR
// && and: both are true
// || or: one of them is true

print("\n====Combining Operators====")
let a = true
let b = true

if a && b {
    print("Hello Andira!")
} else {
    print("Hm.")
}

let a2 = false
let b2 = true

if a2 && b2 {
    print("Hello Swift!")
} else {
    print("Hm..")
}

let a3 = false
let b3 = true

if a3 || b3 {
    print("Hello World!")
} else {
    print("Hmm...")
}

// multiple conditions: && || in one sentences, suggestedly using (parentheses)
let isAdmin = true
let isOwner = false
let isEnabledEditing: Bool = true

if (isOwner == true && isEnabledEditing) || isAdmin == true {
    print("You can delete these posts.")
}


//--------------------------------------------------------------------------------------------

// ternary operators is a condition plus true or false blocks all in one
// condition ? true : false

print("\n====Ternary Operators====")

let cardOne = 12
let cardTwo = 13
print(cardOne == cardTwo ? "Cards are the same." : "Cards are different.")

let isAuthenticated = true
print(isAuthenticated ? "Welcome!" : "Who are you?")


//--------------------------------------------------------------------------------------------

// switch case
// to execution continue on to the next case, use the fallthrough keyword
print("\n====Switch Statements====")

let weather = "sunny"

switch weather {
    case "rain":
        print("Bring an umbrella.")
    case "snow":
        print("Wrap up warm.")
    case "sunny":
        print("Wear sunscreen.")
        fallthrough
    default:
        print("Enjoy your day!")
} 


//--------------------------------------------------------------------------------------------

// range operators
print("\n====Range Operators====")

// half-open range ..< exclude final value
// closed range ... include final value
// one-sided range 2... or ...2 

let yourScore = 85

switch yourScore {
    case 0..<50:
        print("You get a C, you failed badly.")
    case 50...80:
        print("You get a B, not bad.")
    default:
        print("You get an A, congrats!")
}


var myFlowers = ["Roses", "Sunflowers", "White Roses", "Baby's-Breath"]
print(myFlowers[1...])1
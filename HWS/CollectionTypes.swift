print("===========================================================")
print("The Difference between Array, Set, Tuple, and Dictionaries")
print("===========================================================")
// - array: ordered, can have duplicates, can be added & removed, using brackets, access numerical
var food = ["Pizza", "Fried Chicken", "Burger"]
print(food[0])

// - set: inordered, can't have duplicates, unique, can be added & removed, using parentheses & brackets, can't access numerical
var food2 = Set(["Pizza", "Fried Chicken", "Burger"])
print(food2)

// tuple: fixed size, can't be added & removed, using parentheses, access numerical/names of the items
let food3 = (first: "Pizza", second: "Fried Chicken", last: "Burger")
print(food3.second)

// dictionaries: have keys & values, using brackets and colons, have default values(not always tho)
let food4 = [
    "Pizza Hut": "Pizza", 
    "McD": "Fried Chicken", 
    "Burger King": "Burger"
]

let burgerFood = food4["Burger King", default: "No Burger"]
print("\"Burger King\" menyajikan \(burgerFood)")

let dominos = food4["Dominos", default: "No Pizza Dominos, just Pizza Hut"]
print(dominos)

// ----------------------------------------------------------------------------------------------------------------

print("\n=====Empty Collections=====")

// empty dictionaries
var teams = [String: String]()
teams["Paul"] = "Red"  //add later on
print(teams)

// empty array
var results = [Int]()

// empty set
var words = Set<String>()
var numbers = Set<Int>()

// array and dictionaries have special syntax; other types must use <angle brackets> like Set
// create arrays and dictionaries with similiar syntax like Set
var scores = Dictionary<String, Int>()
var result = Array<Int>()

// ------------------------------------------------

print("\n=====Enumerations=====")

// enums: a way of defining groups of related values in a way that makes them easier to use.

let result1 = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}
let result4 = Result.failure
let result5 = Result.success
print("The result is: \(result4)")
print("Another result is: \(result5)")

enum Direction {
    case north
    case south
    case west
    case east
}
let whichDirection = Direction.north
print("The direction is in the \(whichDirection).")


// enums associated values: additional information about each case
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")
print(talking)


// enums raw values: attach values to enums, can be created from ints or strings
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
let earth = Planet.earth.rawValue
print("The value of earth is \(earth).")

enum Planet2: Int {
    case mercury2 = 1
    case venus2 
    case earth2
    case mars2
}
let earthOrder = Planet2.earth2.rawValue
print("Earth has value \(earthOrder).")
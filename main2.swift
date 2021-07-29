let opening = "=====The Difference between Array, Set, Tuple, and Dictionaries====="
print(opening)

// - array: ordered, can have duplicates, can be added & removed, using brackets
var food = ["Pizza", "Fried Chicken", "Burger"]
print(food[0])

// - set: inordered, can't have duplicates, unique, can be added & removed, using parentheses & brackets
var food2 = Set(["Pizza", "Fried Chicken", "Burger"])
print(food2)

// tuple: fixed size, can't be added & removed, using parentheses
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

// --------------------------------------

// enums
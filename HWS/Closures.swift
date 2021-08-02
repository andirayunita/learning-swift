print("============================================")
print("\t\t\t\t  Closures")
print("============================================")

// creating basic closures
// closures are like functions but written differently
// 
print("\n====Creating Basic Closures====")

let driving = {
    print("I'm driving in my car")
}
driving()

//--------------------------------------------------------------------------------------------

// accepting parameters in a closure
// after the opening braces, list the parameters inside the parentheses,
// then write _in_ keyword after parameters
print("\n====Accepting Parameters in a Closure====")

let driving1 = { (place: String) in
    print("I'm going to \(place) in my car!")
}
driving1("Jakarta")    //don't use parameters labels when running closures

//--------------------------------------------------------------------------------------------

// returning value from a closure
// write the return value data types before the in keyword,
// then use the return keyword inside the closure like a function
print("\n====Returning Value From a Closure====")

let drivingWithReturn = { (place: String) -> String in
    return "Wohooo! I'm going to \(place) in my car!"
}
let message = drivingWithReturn("Palembang")
print(message)

//--------------------------------------------------------------------------------------------

// closures as parameters
// print("\n====Closures as Parameters====")


//--------------------------------------------------------------------------------------------

// trailing closure syntax
// print("\n====Trailing Closure Syntax====")

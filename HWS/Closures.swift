print("============================================")
print("\t\t\t\t  Closures")
print("============================================")

// creating basic closures
// closures are like functions but written differently
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
driving1("Jakarta")    //don't use parameters names when running closures

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

// --return a value from a closure that takes no parameters
let payment = { () -> Bool in
    print("Paying an anonymous person..")
    return true
}
payment()

//--------------------------------------------------------------------------------------------

// closures as parameters
// specify the parameter type as () -> Void in a fuction,
// that means “accepts no parameters, and returns Void”
print("\n====Closures as Parameters====")

//function has its parameter as closure that accepts no parameters and returns nothing(Void)

let driving2 = {
    print("I'm driving in my car..")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go!")
    action()
    print("I arrived!")
}
travel(action: driving2)


let awesomeTalk = {
	print("Here's a great talk!")
}
func deliverTalk(name: String, type: () -> Void) {
	print("My talk is called \(name)")
	type()
}
deliverTalk(name: "My Awesome Talk", type: awesomeTalk)


//--------------------------------------------------------------------------------------------

// trailing closure syntax
print("\n====Trailing Closure Syntax====")

func travel2(action: () -> Void) {
    print("Alright, I'm ready to go.")
    action()
    print("Yeay, I arrived!")
}
travel2 {
    print("Wait, I'm driving in my car.") 
}
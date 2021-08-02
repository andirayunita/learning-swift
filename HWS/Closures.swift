print("============================================")
print("\t\t\t\t  Closures")
// closures means: create a function, and assign it to a variable,
// call that function using that variable, 
// and even pass that function into other functions as parameter. 
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
driving1("Jakarta")    //don't use parameters names/labels when running closures

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
// to assign the closure as parameters in a function: 
// first, specify the parameter type as () -> Void in a fuction,
// that means “accepts no parameters, and returns Void”
print("\n====Closures as Parameters====")

let driving2 = {  //this is driving closure
    print("I'm driving in my car..")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go!")
    action()    //this is action closure
    print("I arrived!")
}
travel(action: driving2)
// lines 65: this function has its closure as parameter now, 
// before, that function accepts no parameters(lines 60) and returns nothing(Void)


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
// if the last parameter(in a function) is a closure, 
// we can use special syntax, which is trailing closure
print("\n====Trailing Closure Syntax====")

func travel2(action: () -> Void) {
    print("Alright, I'm ready to go.")
    action()
    print("Yeay, I arrived!")
}
travel2 {  //we can call travel2() function like this, using trailing closure
    print("Wait, I'm driving in my car.") 
}


func animate(duration: Double, animations: () -> Void) {  //last parameter in this function, is pemanggilan closure
    print("Starting a \(duration) second animation..")
    animations()  //this is animations closure
}
animate(duration: 3) {  //this is trailing closure, and we can ignore the animations parameter
    print("Fade out an image.")
}


func goOnVacation(to destination: String, _ activities: () -> Void) {
	print("Packing bags...")
	print("Getting on plane to \(destination)...")
	activities()
	print("Time to go home!")
}
goOnVacation(to: "Mexico") {
	print("Go sightseeing")
	print("Relax in sun")
	print("Go hiking")
}


//--------------------------------------------------------------------------------------------

// using closures as parameters when they accept parameters
print("\n==Closures as Parameters when They Accept Parameters==")

// using closures as parameters when they return values

// shorthand parameter names

// closures with multiple parameters

// returning closures from functions

// capturing values



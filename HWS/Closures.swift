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

func travel3(action3: (String) -> Void) {  //fill the action3() with types any parameters that closure should accept
    print("Okay, I'm ready to go.")
    action3("Bali")    //this is action3 closure with data types String
    print("Yeah, I arrived!")
}
travel3 { (place: String) in
    print("I'm going to \(place) in my car~")
}
//line 129: using trailing closure syntax, 
// that trailing closure accept parameters which is: parameter place with data type String


func fetchData(then parse: (String) -> Void) {
	let data = "Success!"
	parse(data)
}
fetchData { (data: String) in
	print("Data received: \(data)")
}

func fix(item: String, payBill: (Int) -> Void) {
	print("I've fixed your \(item)")
	payBill(450)
}
fix(item: "roof") { (bill: Int) in
	print("You want $\(bill) for that? Outrageous!")
}

func getDirections(to destination: String, then travel: ([String]) -> Void) {
	let directions = [
		"Go straight ahead",
		"Turn left onto Station Road",
		"Turn right onto High Street",
		"You have arrived at \(destination)"
	]
	travel(directions)
}
getDirections(to: "London") { (directions: [String]) in
	print("I'm getting my car.")
	for direction in directions {
		print(direction)
	}
}

func runKidsParty(activities: ([String]) -> Void) {
	let kids = ["Bella", "India", "Phoebe"]
	activities(kids)
}
runKidsParty { (names: [String]) in
	for name in names {
		print("Here's your party bag, \(name).")
	}
}


//--------------------------------------------------------------------------------------------

// using closures as parameters when they return values
// replace () -> Void  into  () -> returnType
print("\n==Closures as Parameters When They Return Values==")

func travel4(action4: (String) -> String) { 
    print("Okayyy, I'm ready to go!!")
    let description = action4("New York")
    print(description)
    print("Yeayy, I arrived!")
}
travel4 { (place: String) -> String in  //using trailing closure syntax
    return "Yohoo, I'm going to \(place) in my car!"
}
//lines 184: travel4() function accepts closure(action4) as parameter, 
//and that closure accepts a String and returns values String


func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    //start with a total equal to the first value
    var current = values[0]

    //loop over all the values in array, counting from index 1 onwards
    for value in values[1...] {
        //call our closure with the current value and the array element,
        //assign its result to our current value
        current = closure(current, value)
    }

    //send back the final current value
    return current
}
let numberz = [10, 20, 30]
// let sum = reduce(numberz) { (runningTotal: Int, next: Int) in
//     runningTotal + next
// }
let sum = reduce(numberz, using: +)   //this is the same as lines 213-215
let multipled = reduce(numberz, using: *)
print(sum)
print(multipled)


func playSong(_ name: String, notes: () -> String) {
	print("I'm going to play \(name).")
	let playedNotes = notes()
	print(playedNotes)
}
playSong("Mary Had a Little Lamb") {
	return "EDCDEEEDDDEGG"
}

func loadData(input: () -> String) {
	print("Loading...")
	let str = input()
	print("Loaded: \(str)")
}
loadData {
	return "He thrusts his fists against the posts"
}

func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
	for number in numbers {
		let result = algorithm(number)
		print("Manipulating \(number) produced \(result)")
	}
}
manipulate(numbers: [1, 2, 3]) { number in
	return number * number
}

func increaseBankBalance(start: Double, interestCalculator: () -> Double) {
	print("Your current balance is \(start).")
	let interestRate = interestCalculator()
	let withInterest = start * interestRate
	print("You now have \(withInterest).")
}
increaseBankBalance(start: 200.0) {
	return 1.01
}


//--------------------------------------------------------------------------------------------

// shorthand parameter names: shorthand syntax for closures
// shorthand parameters are written as $0, $1 and so on
print("\n====Shorthand Parameter Names====")

func travel5(action5: (String) -> String) { 
    print("Yup, I'm ready to go!!")
    let description = action5("Australia")
    print(description)
    print("Yup, I arrived!")
}
travel5 {
    "Yup, I'm going to \($0) in my car!"
}
//lines 272, we can remove the closure parameters and returnType, also remove place in,
//and remove return keyword, then adding dollar sign and number counting from 0.


//--------------------------------------------------------------------------------------------

// closures with multiple parameters
print("\n==Closures With Multiple Parameters==")

func travel6(action6: (String, Int) -> String) {
    print("Heyy, I'm ready to go!")
    let description = action6("Los Angeles", 60)
    print(description)
    print("Heyy, I arrived!")
}
travel6 {
    "Heyy, I'm going to \($0) at \($1) miles per hour."
}

func getTransport(destination: String, method: (String, Int) -> Bool) {
	let maxCost = 10
	let result = method(destination, maxCost)
	if result {
		print("OK, you can travel.")
	} else {
		print("Sorry, you need more money.")
	}
}


//--------------------------------------------------------------------------------------------

// returning closures from functions
print("\n==Returning Closures From Parameters==")

func travel7() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result2 = travel7()
result2("France")

// let result3 = travel7()("Hawaii")   // this is allowable but not recommended.

//lines 311, travel7() function accepts no parameters and returns a closure, 
// the closure will be returned must be called a String and will return nothing(Void).


func createValidator() -> (String) -> Bool {
	return {
		if $0 == "twostraws" {
			return true
		} else {
			return false
		}
	}
}
let validator = createValidator()
print(validator("twostraws"))


func makeRecorder(media: String) -> () -> String {
	switch media {
	case "podcast":
		return {
			return "I'm recording a podcast"
		}
	default:
		return {
			return "I'm recording a video"
		}
	}
}
let recorder = makeRecorder(media: "podcast")
print(recorder())


func createTravelMethod(distance: Int) -> (String) -> Void {
	if distance < 5 {
		return {
			print("I'm walking to \($0).")
		}
	} else if distance < 20 {
		return {
			print("I'm cycling to \($0).")
		}
	} else {
		return {
			print("I'm driving to \($0).")
		}
	}
}
let travelMethod = createTravelMethod(distance: 15)
travelMethod("London")


func createAgeCheck(strict: Bool) -> (Int) -> Bool {
	if strict {
		return {
			if $0 <= 21 {
				return true
			} else {
				return false
			}
		}
	} else {
		return {
			if $0 <= 18 {
				return true
			} else {
				return false
			}
		}
	}
}
let ageCheck = createAgeCheck(strict: true)
let result = ageCheck(20)
print(result)


func createDoubler() -> (Int) -> Int {
	return {
		return $0 * 2
	}
}
let doubler = createDoubler()
print(doubler(2))


//--------------------------------------------------------------------------------------------

// capturing values
// external value will be captured
print("\n==Capturing Values==")

func travel8() -> (String) -> Void {
    var counter = 1   //external value

    return {
        print("\(counter). I'm going to \($0)..")
        counter += 1
    }
}
let result4 = travel8()
result4("New Zealand")
result4("New Zealand")
result4("New Zealand")


func makeRandomNumbersGenerator() -> () -> Int {
    var previousNumber = 0

    return {
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}
let generators = makeRandomNumbersGenerator()
for _ in 1...10 {
    print(generators())
}


func makeAdder() -> (Int) -> Void {
	var sum = 0
	return {
		sum += $0
		print("Sum is now \(sum)")
	}
}
let adder = makeAdder()
adder(5)
adder(3)


func swingBat() -> () -> Void {
	var strikes = 0
	return {
		strikes += 1
		if strikes >= 3 {
			print("You're out!")
		} else {
			print("Strike \(strikes)")
		}
	}
}
let swing = swingBat()
swing()
swing()
swing()


func storeTwoValues(value1: String, value2: String) -> (String) -> String {
	var previous = value1
	var current = value2
	return { new in
		let removed = previous
		previous = current
		current = new
		return "Removed \(removed)"
	}
}
let store = storeTwoValues(value1: "Hello", value2: "World")
let removed = store("Value Three")
print(removed)


func createAgeValidator(strict: Bool) -> (Int) -> Bool {
	return {
		if strict {
			if $0 >= 21 {
				return true
			}
		} else {
			if $0 >= 18 {
				return true
			}
		}
		return false
	}
}
let validator = createAgeValidator(strict: true)
validator(21)


func visitPlaces() -> (String) -> Void {
	var places = [String: Int]()
	return {
		places[$0, default: 0] += 1
		let timesVisited = places[$0, default: 0]
		print("Number of times I've visited \($0): \(timesVisited).")
	}
}
let visit = visitPlaces()
visit("London")
visit("New York")
visit("London")


func summonGenie(wishCount: Int) -> (String) -> Void {
	var currentWishes = wishCount
	return {
		if currentWishes > 0 {
			currentWishes -= 1
			print("You wished for \($0).")
			print("Wishes left: \(currentWishes)")
		} else {
			print("You're out of wishes.")
		}
	}
}
let genie = summonGenie(wishCount: 3)
genie("a Ferrari")
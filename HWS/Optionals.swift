print("================================================")
print("\t Optionals, Unwrapping, and Typecasting")
print("================================================")

/* NOTES:
nil = represent the absence of a value. */

//------------------------------------------------------------------------------------------------------

// handling missing data, means optional: allow to represent the absence of some data.
// using ? keyword after type optional. might be nil.
print("\n====Handling Missing Data====")

var age: Int? = nil
age = 38
print(age!)

//------------------------------------------------------------------------------------------------------

// unwrapping optionals
// if let syntax to unwrap optionals with a condition.
// if let: taking care of checking and extracting values at all once.
print("\n====Unwrapping Optionals====")

var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
    
}


func getUsername() -> String? {    //getUsername() func returns an optional string (could be string or nil) 
    "Syauqi"
}
if let username = getUsername() {   //if let is used for unwrap the optional
    print("Username is \(username).")
} else {
    print("No username.")
    
}


var favoriteMovie: String? = nil
favoriteMovie = "The Life of Brian"
if let movie = favoriteMovie {
	print("Your favorite movie is \(movie).")
} else {
	print("You don't have a favorite movie.")
}


let song: String? = "Shake it Off"
if let unwrappedSong = song {
	print("The name has \(unwrappedSong.count) letters.")
}


let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
	print("Found \(album) at position \(position).")
}


/* lines 65-71: attempt to compare optional Int against 100 which not allowed.
var bestScore: Int? = nil
bestScore = 101
if bestScore > 100 {
	print("You got a high score!")
} else {
	print("Better luck next time.")
}*/


//------------------------------------------------------------------------------------------------------

// unwrapping guard
/* guard let ___ else { } syntax also used to unwrap the optionals.
guard let: designed to exit current loop/func/condition if the check fails(it finds nil), so
any values unwrap using it will stay around after the check. */
print("\n====Unwrapping Guard====")

func greet(_ name2: String?) {
    guard let unwrapped2 = name2 else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped2).")
}
greet(nil)       //you didn't provide a name
greet("Harry")   // hello, harry



func getMeaningOfLife() -> Int? {
    42
}
func printMeaningOfLife() {
    guard let namee = getMeaningOfLife() else {
        return
    }

    print(namee)
}
printMeaningOfLife()



func double(number: Int?) -> Int? {
	guard let number = number else {
		return nil
	}
	return number * 2
}
let input = 5
if let doubled = double(number: input) {
	print("\(input) doubled is \(doubled).")
}


func uppercase(string: String?) -> String? {
	guard let string = string else {
		return nil
	}
	return string.uppercased()
}
if let result = uppercase(string: "Hello") {
	print(result)
}


func isLongEnough(_ string: String?) -> Bool {
	guard let string = string else { return false }
	if string.count >= 8 {
		return true
	} else {
		return false
	}
}
if isLongEnough("Mario Odyssey") {
	print("Let's play that!")
}


func validate(password: String?) -> Bool {
	guard let password = password else {
		return false
	}

	if password == "fr0sties" {
		print("Authenticated successfully!")
		return true
	}
	return false
}


func describe(occupation: String?) {
	guard let occupation = occupation else {
		print("You don't have a job.")
		return
	}
	print("You are an \(occupation).")
}
let job = "engineer"
describe(occupation: job)

/* TIPS:
use if let to unwrap some optionals,
use guard let to checking that conditions are correct before continuing.
*/

//------------------------------------------------------------------------------------------------------

// force unwrapping: use ! to force unwrap optionals
// TIPS: never force unwrap of something that wont succeed 100% of the time.
print("\n====Force Unwrapping====")

let str = "5"
let num = Int(str)!
print(num)


let ages: Int = 21
let allowedMessage: String? = ages >= 21 ? "Welcome!" : nil
let result = allowedMessage!
print(result)


func title(for page: Int) -> String? {
	guard page >= 1 else {
		return nil
	}
	let pageCount = 132
	if page < pageCount {
		return "Page \(page)"
	} else {
		return nil
	}
}
let pageTitle = title(for: 16)!
print(pageTitle)


//------------------------------------------------------------------------------------------------------

// implicitly unwrapped optionals: also use !
print("\n====Implicitly Unwrapped Optionals====")

/* this exist because sometimes variable start as nil, 
but will always have values before you use it. 
don't need if let syntax, just use ! */

let agee: Int! = nil  //if you print this, it will crash


//------------------------------------------------------------------------------------------------------

// nil coalescing: unwraps an optional and returns the value if there is one.
// lets us attempt to unwrap an optional, but provide a default value if the optional contains nil.
// use ??
print("\n====Nil coalescing====")

func uname(for id: Int) -> String? {
    if id == 1 {
        return "Harry Edward"
    } else {
        return nil
    }
}
let unamee = uname(for: 17) ?? "Anonymous"    //anonymous is default value used as back up
print(unamee)  //this will obviously print anonymous


//chain nil coalescing
// let savedData = first() ?? second() ?? " "


//we can also use nil coalescing to read dictionaries (beside the "default:" by dictionary)
let score =  ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = score["Crusher"] ?? 0
//although dictionaries provide default, we can use one of them
let crusherScore2 = score["Crusher", default: 0]
print(crusherScore)
print(crusherScore2)

//another notes: nil coalescing accross different types are not allowed

//------------------------------------------------------------------------------------------------------

// optional chaining
// EXAMPLE: a.b.c and b is optional, so write  a.b?.c  
// if b is nil, the rest of the line will be ignored.
print("\n====Optional Chaining====")

let membersOf1D = ["Liam", "Niall", "Harry", "Louis", "Zayn"]
let nameOfMembers = membersOf1D.first?.uppercased()

//optional chaining makes good companion to nil coalescing, example: 
// let nameOfMembers = membersOf1D.first?.uppercased() ?? "?"

let songs: [String]? = [String]()
let finalSong = songs?.last?.uppercased()


func albumReleased(in year: Int) -> String? {
	switch year {
	case 2006: return "Taylor Swift"
	case 2008: return "Fearless"
	case 2010: return "Speak Now"
	case 2012: return "Red"
	case 2014: return "1989"
	case 2017: return "Reputation"
	default: return nil
	}
}
let nameOfAlbum = albumReleased(in: 2006)?.uppercased()


// let shoppingList = ["eggs", "tomatoes", "grapes"]
// let firstItem = shoppingList.first?.appending(" are on my shopping list")
// print(firstItem)


let capitals = ["Scotland": "Edinburgh", "Wales": "Cardiff"]
let scottishCapital = capitals["Scotland"]?.lowercased()


let racers = ["Hamilton", "Verstappen", "Vettel"]
let winnerWasVE = racers.first?.hasPrefix("Ve")


//------------------------------------------------------------------------------------------------------

// optional try
/* 
using try?  or  try!
try? changes throwing functions into functions that return an optional. (if throws error, nil.)
use try! if sure the function will not fail, if func does throws an error, the code will crash. */
print("\n====Optional Try====")

enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}
do {
    try checkPassword("password")
    print("Your password is good.")
} catch {
    print("You can't use that passowrd.")
}
//---
if let result = try? checkPassword("password") {    //try?
    print("Result was \(result).")
} else {
    print("D'oh.")
}
//---
try! checkPassword("sekrit")    //try!
print("OK.")


//------------------------------------------------------------------------------------------------------

// failable initializers: an initializers that might work or not.
// using init?() and return nil if something goes wrong.
print("\n====Failable Initializers====")

struct Password {
	var text: String
	init?(input: String) {
		if input.count < 6 {
			print("Password too short.")
			return nil
		}
		text = input
	}
}
let password = Password(input: "hell0")


class Camel {
	var humps: Int
	init?(humpCount: Int) {
		guard humpCount <= 2 else { return nil }
		humps = humpCount
	}
}
let horse = Camel(humpCount: 0)    // gonna hold constant Camel?


struct Dogg {
	var name: String
	init?(name: String) {
		guard name == "Lassie" else {
			print("Sorry, wrong dog!")
			return nil
		}
		self.name = name
	}
}
let dog = Dogg(name: "Fido")

//------------------------------------------------------------------------------------------------------

// typecasting: to convert one type of object to another
// use as?
// as? will return returns an optional: it will be nil if the typecast failed, 
// or a converted type otherwise.
print("\n====Typecasting====")

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()     //ask all the dogs in array to bark
    }
}



class Person {
	var name = "Ariana Grande"
}
class User: Person { }
let ariana = User()
if let user = ariana as? User {
	print("\(user.name) is a user.")
}


let flavor = "apple and mango"
if let taste = flavor as? String {
	print("We added \(taste).")
}


class Transport { }
class Train: Transport {
	var type = "public"
}
class Car: Transport {
	var type = "private"
}
let travelPlans = [Train(), Car(), Train()]
for plan in travelPlans {
	if let train = plan as? Train {
		print("We're taking \(train.type) transport.")
	}
}


class CitrusFruit {
	var averagePH = 3.0
}
class Orange: CitrusFruit { }
let citrus = Orange()
if let orange = citrus as? Orange {
	print("This orange has a pH of \(orange.averagePH).")
}


class Bird {
	var wingspan: Double? = nil
}
class Eagle: Bird { }
let bird = Eagle()
if let eagle = bird as? Eagle {
	if let wingspan = eagle.wingspan {
		print("The wingspan is \(wingspan).")
	} else {
		print("This bird has an unknown wingspan.")
	}
}


class Reading {
	var value = 0.0
}
class TemperatureReading: Reading { }
let temperature = TemperatureReading()
if let reading = temperature as? Reading {
	print("The reading is \(reading.value).")
}


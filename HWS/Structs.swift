print("============================================")
print("\t\t Structs, Property, Methods")
print("============================================")

//--------------------------------------------------------------------------------------------

// creating structs
// variable inside struct are called properties
// often called stored properties
// stored properties: class and structure
print("\n====Creating Structs====")

struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)    //tennis and name are variable, so can be changed later

tennis.name = "Lawn tennis"
print(tennis.name)


struct Player {
	var name: String
	var position: String
}
let harry = Player(name: "Harry Styles", position: "Forward")
print(harry.name)
print(harry.position)

//--------------------------------------------------------------------------------------------

// computed properties: a property that runs code to figure it out its values
// constant cannot be computed property
// computed property: class, structure, enumerations
print("\n====Computed Properties====")

struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {    //olympicStatus is computed property
        if isOlympicSport {
            return "\(name) is an Olympic sport."
        } else {
            return "\(name) is not an Olympic sport."
        }
    }
}
let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


struct Keyboard {
	var isMechanical = false
	var noiseLevel: Int {
		if isMechanical {
			return 11
		} else {
			return 3
		}
	}
}
let majestouch = Keyboard(isMechanical: true)
print(majestouch.noiseLevel)

//--------------------------------------------------------------------------------------------

// property observers: let attach functionality to run before or after a property changes
// didSet after property changes, 
// willSet before property changes but it rarely used
print("\n====Property Observers====")

struct Progress {
    var task: String
    var amount: Int {
        didSet {          //didSet is property observer
            print("\(task) now is \(amount)% complete.")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


struct FishTank {
	var capacity: Int
	var fishCount: Int {
		didSet {
			if fishCount > capacity {
				print("You have too many fish!")
			}
		}
	}
}


//--------------------------------------------------------------------------------------------

// Methods: belongs to a type such as struct, enum, classes

print("\n====Methods====")

struct City {
    var population: Int

    func collectTaxes() -> Int {      //methods: function inside struct
        return population * 1000
    }
}
let jakarta = City(population: 9_000_000)
print(jakarta.collectTaxes())


struct Venue {
	var name: String
	var maximumCapacity: Int
	func makeBooking(for people: Int) {
		if people > maximumCapacity {
			print("Sorry, we can only accommodate \(maximumCapacity).")
		} else {
			print("\(name) is all yours!")
		}
	}
}


struct Singer {
	var signatureSong: String
	func sing() {
		print("Who wants to hear \(signatureSong)?")
	}
}

//--------------------------------------------------------------------------------------------

// mutating methods
// marking methods as mutating keyword will stop method being called on constant structs
print("\n====Mutating Methods====")

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
print(person.makeAnonymous())


struct Book {
	var totalPages: Int
	var pagesLeftToRead = 0
	mutating func read(pages: Int) {
		if pages < pagesLeftToRead {
			pagesLeftToRead -= pages
		} else {
			pagesLeftToRead = 0
			print("I'm done!")
		}
	}
}


struct Delorean {
	var speed = 0
	mutating func accelerate() {
		speed += 1
		if speed == 88 {
			travelThroughTime()
		}
	}
	func travelThroughTime() {
		print("Where we're going we don't need roads.")
	}
}


struct Bicycle {
	var currentGear: Int
	mutating func changeGear(to newGear: Int) {
		currentGear = newGear
		print("I'm now in gear \(currentGear).")
	}
}

//--------------------------------------------------------------------------------------------

// properties and methods of strings
// suprisingly strings are structs
print("\n====Properties and Methods of Strings====")

let string = "Do or do not do, there is no try."
print(string.count)             //count: to know numbers of characters in string
print(string.hasPrefix("Do"))   //hasPrefix() method returns true if the string starts with specific letters
print(string.uppercased())      //to uppercase a string
print(string.sorted())          //to sort the letters of the string into an array
print(string.contains("y"))     //to check whether the strings contains a character or a string
//string have lot of properties and methods, try to type string. to find out more in xcode


var str = ""
for i in 1...5 {
	str += "\(i)"
}
print(str.count == 5)


let joke = "What's red and smells like blue paint? Red paint."
print(joke.count > 10)

let song = "Shake it Off"
print(song.uppercased().contains("SHAKE"))

let quote = "Time is an illusion. Lunchtime doubly so."
print(quote.contains("Lunch"))


//--------------------------------------------------------------------------------------------

// properties and methods of arrays
// array also a struct
print("\n====Properties and Methods of Arrays====")

var toys = ["Woody"]
print(toys.count)            //read number of items in an array
toys.append("Buzz")          //add new item into an array
toys.firstIndex(of: "Buzz")  //locate any item inside array
print(toys.sorted())         //sort the items in an array alpabhetically
toys.remove(at: 0)           //remove item in an array
//arrays have lot of properties and methods, try to type toys. to find out more in xcode
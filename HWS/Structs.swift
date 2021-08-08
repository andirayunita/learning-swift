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
// computed property: class, structure, enumerations, extensions
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


struct Code {
	var numberOfBugs = 100
	mutating func fixBug() {
		numberOfBugs += 3
	}
}
var code = Code()
code.fixBug()


struct Barbecue {
	var charcoalBricks = 20
	mutating func addBricks(_ number: Int) {
		charcoalBricks += number
	}
}
var barbecue = Barbecue()
barbecue.addBricks(4)


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
// print(song.uppercased().contains("SHAKE"))

let quote = "Time is an illusion. Lunchtime doubly so."
// print(quote.contains("Lunch"))


//--------------------------------------------------------------------------------------------

// properties and methods of arrays
// array also a struct
print("\n====Properties and Methods of Arrays====")

var toys = ["Woody"]
print(toys.count)            //read number of items in an array
toys.append("Buzz")          //add new item into an array
// toys.firstIndex(of: "Buzz")  //locate any item inside array
print(toys.sorted())         //sort the items in an array alpabhetically
toys.remove(at: 0)           //remove item in an array
//arrays have lot of properties and methods, try to type toys. to find out more in xcode


//--------------------------------------------------------------------------------------------

// initializers: using init keyword
// don't write func before init
// all properties must have a value before initializers ends
print("\n====Initializers====")

struct User {
	var username: String

	init() {      //this initializers accepts no parameters
		username = "Anonymous"
		print("Creating a new user!")
	}
}
var user = User()
user.username = "twostraws"

/* this is Swift's memberwise intilizer
struct Employee {
	var name: String
	var yearActive = 0
}
let roslin = Employee(name: "Laura Roslin")
let andira = Employee(name: "Andira Yunita", yearActive: 2)
print(roslin.name)
print(andira.name, andira.yearActive)
*/
struct Employee {
	var name: String
	var yearActive = 0
}
extension Employee {
	init() {
		self.name = "Anonymous"
		print("Creating an anonymous employee.....")
	}
}
let roslin = Employee(name: "Laura Roslin")  //creating name employee now works,
let anon = Employee()    //as does creating an anonymous employee
print(roslin.name, roslin.yearActive)
print(anon)


struct Experiment {
	var cost = 0
}
let lhc = Experiment(cost: 13_250_000_000)


struct Dictionary {
	var words = Set<String>()
}
let dictionary = Dictionary()


struct Country {
	var name: String
	var usesImperialMeasurements: Bool
	init(countryName: String) {
		name = countryName
		let imperialCountries = ["Liberia", "Myanmar", "USA"]
		if imperialCountries.contains(name) {
			usesImperialMeasurements = true
		} else {
			usesImperialMeasurements = false
		}
	}
}


struct Message {
	var from: String
	var to: String
	var content: String
	init() {
		from = "Unknown"
		to = "Unknown"
		content = "Yo"
	}
}
let message = Message()


struct Cabinet {
	var height: Double
	var width: Double
	var area: Double
	init (itemHeight: Double, itemWidth: Double) {
		height = itemHeight
		width = itemWidth
		area = height * width
	}
}
let drawers = Cabinet(itemHeight: 1.4, itemWidth: 1.0)


//--------------------------------------------------------------------------------------------

// referring to current instance
// using self. keyword
print("\n====Referring to Current Instance====")

struct Person2 {
	var name: String

	init(name: String) {
		print("\(name) was born!")
		self.name = name   //self.name refers to property, name refers to init parameter
	}
}
var liam = Person2(name: "Liam")


struct SuperHero {
	var nickname: String
	var powers: [String]
	init(nickname: String, superPowers: [String]) {
		self.nickname = nickname
		self.powers = superPowers
	}
}
let batman = SuperHero(nickname: "The Caped Crusader", superPowers: ["He's really rich"])


struct Character {
	var name: String
	var actor: String
	var probablyGoingToDie: Bool
	init(name: String, actor: String) {
		self.name = name
		self.actor = actor
		if self.actor == "Sean Bean" {
			probablyGoingToDie = true
		} else {
			probablyGoingToDie = false
		}
	}
}


struct Cottage {
	var rooms: Int
	var rating = 5
	init(rooms: Int) {
		self.rooms = rooms
	}
}
let bailbrookHouse = Cottage(rooms: 4)


//--------------------------------------------------------------------------------------------

// lazy properties: created when only first accessed
// using lazy keyword
print("\n====Lazy Properties====")

struct FamilyTree {
	init() {
		print("Creating family tree!")
	}
}
struct Person3 {
	var names: String
	lazy var familyTree = FamilyTree()

	init(names: String) {
		self.names = names
	}
}
var ine = Person3(names: "Ine")
print(ine.familyTree)
print(ine.familyTree)

//--------------------------------------------------------------------------------------------

// static properties and methods: using static keyword
// share properties and methods accross all instances of struct
print("\n====Static Properties and Methods====")

struct Student {
	static var classSize = 0
	var name2: String

	init(name2: String) {
		self.name2 = name2
		Student.classSize += 1
	}
}
let andira = Student(name2: "andira")
let syauqi = Student(name2: "syauqi")
print(Student.classSize)
//lines 427: classSize belongs to struct itself(Student struct) rather than instance of struct
// so called it struct.staticProperty


struct NewsStory {
	static var breakingNewsCount = 0
	static var regularNewsCount = 0
	var headline: String
	init(headline: String, isBreaking: Bool) {
		self.headline = headline
		if isBreaking {
			NewsStory.breakingNewsCount += 1
		} else {
			NewsStory.regularNewsCount += 1
		}
	}
}


//--------------------------------------------------------------------------------------------

// access control: using public keyword or private keyword
// private: restrict read/write property anywhere outside the struct
// public: lets all other code use the property or method.
print("\n====Access Control====")

struct Person4 {
	private var id: String

	init(id: String) {
		self.id = id
	}

	func identity() -> String {
		return "My social number security is \(id)."
	}
}

struct Person5 {
	private var socialSecurityNumber: String
	init(ssn: String) {
		self.socialSecurityNumber = ssn
	}
}
let sarah = Person5(ssn: "555-55-5555")


struct Office {
	private var passCode: String
	var address: String
	var employees: [String]
	init(address: String, employees: [String]) {
		self.address = address
		self.employees = employees
		self.passCode = "SEKRIT"
	}
}
let monmouthStreet = Office(address: "30 Monmouth St", employees: ["Paul Hudson"])


struct School {
	var staffNames: [String]
	private var studentNames: [String]
	init(staff: String...) {
		self.staffNames = staff
		self.studentNames = [String]()
	}
}
let royalHigh = School(staff: "Mrs Hughes")
print(royalHigh.staffNames)

struct Customer {
	var name: String
	private var creditCardNumber: Int
	init(name: String, creditCard: Int) {
		self.name = name
		self.creditCardNumber = creditCard
	}
}
let lottie = Customer(name: "Lottie Knights", creditCard: 1234567890)


struct App {
	var name: String
	private var sales = 0
	init(name: String) {
		self.name = name
	}
}
let spotify = App(name: "Spotify")
print(spotify.name)

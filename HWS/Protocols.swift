print("===============================================")
print(" Protocols, Extensions and Protocol Extensions")
print("===============================================")

//------------------------------------------------------------------------------------------------------

/* protocols: a way to describe properties and methods something must have, but not provide 
implementations of those methods.
using protocol keyword; and { get set } keyword at properties.
get: read, set: written.
get-only is acceptable, but set-only properties are not allowed. */
print("\n====Protocols====")

protocol Identifiable {
    var id: String { get set }
}
struct User {
    var id: String
}
func displayId(thing: Identifiable) {
    print("My ID is \(thing.id)")
}


protocol Climbable {
	var height: Double { get }  //get-only property
	var gradient: Int { get }
}

protocol Singable {
	var lyrics: [String] { get set }
	var notes: [String] { get set }
}



protocol Purchaseable {
    var name: String { get set }
}
struct Book: Purchaseable {
    var name: String
    var author: String
}
struct Movie: Purchaseable { 
    var name: String
    var actors: [String]
}
struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}
struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}
func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name).")
}


protocol Paintable { }
protocol Tileable { }
struct Wall: Paintable, Tileable { }



protocol SuitableForKids {
	var minimumAge: Int { get set }
	var maximumAge: Int { get set }
}
protocol SupportsMultiplePlayers {
	var minimumPlayers: Int { get set }
	var maximumPlayers: Int { get set }
}
struct FamilyBoardGame: SuitableForKids, SupportsMultiplePlayers {
	var minimumAge = 3
	var maximumAge = 110
	var minimumPlayers = 1
	var maximumPlayers = 4
}

//------------------------------------------------------------------------------------------------------

// protocol inheritance: protocol can inherit from multiple protocols
print("\n====Protocol Inheritance====")

protocol Payable {
    func calculateWages() -> Int 
}
protocol NeedTraining {
    func study()
}
protocol HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedTraining, HasVacation { }   //protocol inheritance



protocol Product {
    var price: Double { get set }
    var weight: Int { get set }
}
protocol Computer: Product {
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}
protocol Laptop: Computer { 
    var screenSize: Int { get set }
}


protocol CarriesPassengers {
	var passengerCount: Int { get set }
}
protocol CarriesCargo {
	var cargoCapacity: Int { get set }
}
protocol Boat: CarriesPassengers, CarriesCargo {
	var name: String { get set }
}


//------------------------------------------------------------------------------------------------------

// extensions: allow to add methods to existing types,
// or to add functionality to struct, class, and more for modifying types.
// NO stored properties in extensions, use computed properties instead.
print("\n====Extensions====")

extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
print(number.squared())

extension Int {
    var isEven: Bool {         //isEven is a computed property inside extensions
        return self % 2 == 0
    }
}



extension Int {
	func clamped(min: Int, max: Int) -> Int {
		if (self > max) {
			return max
		} else if (self < min) {
			return min
		}
		return self
	}
}
let num = 6
print(num.clamped(min: 1, max: 5))



extension String {
	func withPrefix(_ prefix: String) -> String {
		if self.hasPrefix(prefix) { return self }
		return "\(prefix)\(self)"
	}
}
//conclusion: Extensions can add methods and computed properties, but not stored properties.


protocol Inflatable {
	mutating func refillAir()
}
extension Inflatable {
	mutating func refillAir() {
		print("Refilling the air.")
	}
}

//------------------------------------------------------------------------------------------------------

/*
Protocol: desc what methods something should have, but don't provide code inside.
Extensions: provide the code inside a method but only affects one data type,
            can't add a method to lots of types at the same time.

Protocol extensions: looks like extension; extend a whole protocol so conform types get changes.
*/

print("\n====Protocol Extensions====")

protocol Politician {             // this is protocol called politician
	var isDirty: Bool { get set }
	func takeBribe()
}
extension Politician {      //extensions to that protocol, to add method to prints
	func takeBribe() {
		if isDirty {
			print("Thank you very much!")
		} else {
			print("Someone call the police!")
		}
	}
}



protocol Anime {
	var availableLanguages: [String] { get set }
	func watch(in language: String)
}
extension Anime {
	func watch(in language: String) {
		if availableLanguages.contains(language) {
			print("Now playing in \(language)")
		} else {
			print("Unrecognized language.")
		}
	}
}



protocol Hamster {
	var name: String { get set }
	func runInWheel(minutes: Int)
}
extension Hamster {
	func runInWheel(minutes: Int) {
		print("\(name) is going for a run.")
		for _ in 0..<minutes {
			print("Whirr whirr whirr")
		}
	}
}


//------------------------------------------------------------------------------------------------------

// POP: protocol-oriented programming
// practice designing app architecture as series of protocols, then using protocol extensions -
// to provide default implementations.
// crafting code around protocol and protocol extensions.
print("\n====Protocol-Oriented Programming (POP)====")

protocol Identifiable2 {
    var id2: String { get set }
    func identify()
}
extension Identifiable2 {
    func identify() {
        print("My ID is \(id2).")
    }
}
struct User2: Identifiable2 {
    var id2: String
}
let twostraws = User2(id2: "twostraws")
twostraws.identify()

//MARK: lets watch wwdc15 about pop :D

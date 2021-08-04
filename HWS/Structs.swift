print("============================================")
print("\t\t Structs, Property, Methods")
print("============================================")

//--------------------------------------------------------------------------------------------

// creating structs
// variable inside struct are called properties
// often called stored properties
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

// property observers
//
print("\n====Property Observers====")


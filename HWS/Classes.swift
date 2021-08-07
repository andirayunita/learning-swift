print("============================================")
print("\t\t\t\t Classes")
print("============================================")

//NOTES: classes have the same access control like structs(private & public)
//--------------------------------------------------------------------------------------------


// creating classes: NOT memberwise initializers
// if classes has properties, must always create initializers!
print("\n====Creating Classes====")

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")
print("Our dog name is \(poppy.name), and she is a \(poppy.breed).")


class VideoGame {
	var hero: String
	var enemy: String
	init(heroName: String, enemyName: String) {
		self.hero = heroName
		self.enemy = enemyName
	}
}
let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")


class ThemePark {
	var entryPrice: Int
	var rides: [String]
	init(rides: [String]) {
		self.rides = rides
		self.entryPrice = rides.count * 2
	}
}

//--------------------------------------------------------------------------------------------

// class inheritance: subclass inherit from another class (super & child)
// class childClass: parentClass { }
// also use super.init keyword inside the initializers' child class
print("\n====Class Inheritance====")

//dog2 is parent/super class
class Dog2 {
    var name2: String
    var breed2: String

    init(name2: String, breed2: String) {
        self.name2 = name2
        self.breed2 = breed2
    }
}
//poodle is child class
class Poodle: Dog2 {
    init(name2: String) {
        super.init(name2: name2, breed2: "Poodle")
    }
}
let pOdle = Poodle(name2: "Zoro")
print("Other dog is also \(pOdle.breed2), his name is \(pOdle.name2).")


class Product {
	var name: String
	init(name: String) {
		self.name = name
	}
}
class Book: Product {
	var isbn: String
	init(name: String, isbn: String) {
		self.isbn = isbn
		super.init(name: name)
	}
}


class Intrument {
    var names: String 
    init(names: String) {
        self.names = names
    }
}
class Piano: Intrument {
    var namesOfIntruments: Bool
    init(names: String, namesOfIntruments: Bool) {
        self.namesOfIntruments = namesOfIntruments
        super.init(names: "Piano")
    }
}
let piano = Piano(names: "Piano", namesOfIntruments: true)
print("Is \(piano.names) an instrument? \(piano.namesOfIntruments)")


//--------------------------------------------------------------------------------------------

// overriding methods: using override keyword
// child class can replace parent's methods with their new implementations
print("\n====Override Methods====")

class Dog3 {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle3: Dog3 {
    override func makeNoise() {
        print("Yip!")
    }
}
let popy = Poodle3()
popy.makeNoise()


class Band {
	func singSong() {
		print("Here's a new song.")
	}
}
class MetalBand: Band {
	override func singSong() {
		print("Ruuuuh ruh ruh ruuuuuh!")
	}
}
let lordi = MetalBand()
lordi.singSong()


class Spaceship {
}
class StarDestroyer: Spaceship {
	func enterLightSpeed() {
		print("Let's go to ludicrous speed!")
	}
}
let executor = StarDestroyer()
executor.enterLightSpeed()


class Store {
	func restock() -> String {
		return "Fill up the empty shelves"
	}
}
class GroceryStore: Store {
	override func restock() -> String {
		return "We need to buy more food."
	}
}
let tesco = GroceryStore()
print(tesco.restock())


//--------------------------------------------------------------------------------------------

// final classes: using final keyword
// disallow other classes to inherit from final class
print("\n====Final Classes====")

final class Dog4 {
    var name4: String
    var breed4: String
    init(name4: String, breed4: String) {
        self.name4 = name4
        self.breed4 = breed4
    }
}
let jObi = Dog4(name4: "Jobi", breed4: "Shih Tzu")
print(jObi.name4, jObi.breed4)

//--------------------------------------------------------------------------------------------

// copying objects
// when copy a struct, changing one won't change the other
// when copy a class, changing one does change the other
print("\n====Copying Objects=====")

class Singer {
    var nameOfSinger = "Taylor Swift"
    init() { }
}
var singer = Singer()
print(singer.nameOfSinger)

var singerCopy = singer
singerCopy.nameOfSinger = "Harry Styles"
print(singer.nameOfSinger)
/* line 194-195: 
When two variables(singer & singerCopy) point at the same class instance(nameOfSinger), 
they both point at the same piece of memory – changing one changes the other.
*/

//lines 198-239: these classes print the same output twice
class Starship {
	var maxWarp = 9.0
}
var voyager = Starship()
voyager.maxWarp = 9.975
var enterprise = voyager
enterprise.maxWarp = 9.6
print(voyager.maxWarp)
print(enterprise.maxWarp)


class Hater {
	var isHating = true
}
var hater1 = Hater()
var hater2 = hater1
hater1.isHating = false
print(hater1.isHating)
print(hater2.isHating)


class Hospital {
	var onCallStaff = [String]()
}
var londonCentral = Hospital()
var londonWest = londonCentral
londonCentral.onCallStaff.append("Dr Harlan")
londonWest.onCallStaff.append("Dr Haskins")
print(londonCentral.onCallStaff.count)
print(londonWest.onCallStaff.count)


class Magazine {
	var pageCount = 132
}
var example = Magazine()
var wired = example
wired.pageCount = 164
var vogue = example
vogue.pageCount = 128
print(wired.pageCount)
print(vogue.pageCount)
//lines 198-239: these classes print the same output twice


//--------------------------------------------------------------------------------------------

// deinitializers: code that gets run when an instance of a class is destroyed
// using deinit keyword
print("\n====Deinitializers====")

class Persoon {
    var namee = "Andira Yunita"

    init() {
        print("\(namee) is alive!")
    }

    func greetings() {
        print("Hello, I'm \(namee)!")
    }

    deinit {
        print("\(namee) is no more!")
    }
}
for _ in 1...3 {
    let persOn = Persoon()
    persOn.greetings()
}

//--------------------------------------------------------------------------------------------

// mutability
// Variable properties in constant classes can be modified freely without mutating keyword 
// variable properties in constant struct can't be modified.
print("\n====Mutability====")

class popSinger {
    var nameOfPopSinger = "Lady Gaga"     //give this variable a constant if want to stop happening
    init() {}
}
let singers = popSinger()
singers.nameOfPopSinger = "Beyonce"
print(singers.nameOfPopSinger)   //this will print Beyonce.
/* 
Variable classes can have variable properties changed
Constant classes can have variable properties changed
Variable structs can have variable properties changed
Constant structs cannot have variable properties changed
*/


class Light {
	var onState = false
	func toggle() {
		if onState {
			onState = false
		} else {
			onState = true
		}
		print("Click")
	}
}
let light = Light()
light.toggle()


class Phasers {
	var energyLevel = 100
	func firePhasers() {
		if energyLevel > 10 {
			print("Firing!")
			energyLevel -= 10
		}
	}
}
var phasers = Phasers()
phasers.firePhasers()


class Sun {
	var isNova = false
	func goNova() {
		isNova = true
	}
}
let sun = Sun()
sun.goNova()




//NOTES:
/* in conclusion, these are the differences between classes and structs :
1. Classes do not come with synthesized memberwise initializers.
2. One class can be built upon (“inherit from”) another class, gaining its properties and methods.
3. Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
4. Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
5. Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.
*/


print("============================================")
print("\t\t   Classes")
print("============================================")

//--------------------------------------------------------------------------------------------

// creating classes
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



//--------------------------------------------------------------------------------------------

// class inheritance
// use super.init keyword in child class
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
        super.init(name2: name2, breed2: "Poodlee")
    }
}

//--------------------------------------------------------------------------------------------

// overriding methods
// 
// print("\n====Override Methods====")


//--------------------------------------------------------------------------------------------

// final classes
// 
// print("\n====Final Classes====")


//--------------------------------------------------------------------------------------------

// copying objects
// 
// print("\n====Copying Objects=====")


//--------------------------------------------------------------------------------------------

// deinitializers
// 
// print("\n====Deinitializers====")


//--------------------------------------------------------------------------------------------

// mutability
// 
// print("\n====Mutability====")


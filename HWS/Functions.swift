print("============================================")
print("\t Functions, Parameters, and Errors")
print("============================================")

// writing functions
// build new fuctions out of existing functions is called function composition
// func nameOfFunction() 
print("\n====Writing Functions====")

func printHelp() {
    let message = """
    Welcome to MyApp!

    Run this app inside a directory of images and
    MyApp will resize them all into thumbnails
    """
    print(message)
}
printHelp()

//--------------------------------------------------------------------------------------------

// accepting parameters
// give each parameter a name, then a colon, then its data type
// func nameOfFunction(parameterName: parameterType)
print("\n====Accepting Parameters====")

func square(number: Int) {
    print(number * number)
}
square(number: 5)


func smartPhones(phones: [String]) {
    print("These are \(phones) smartphones.")
}
smartPhones(phones: ["iPhone", "Android"])

//--------------------------------------------------------------------------------------------

// returning values
// write a dash & right angle bracket after func parameter's list, 
// then write kind of data types will be returned,
// then use return keyword inside function. for example,
// func nameOfFunction(parameterName: parameterType) -> dataTypesReturn {
//    return someValues
// }
print("\n====Returning Values====")

func squared(number: Int) -> Int {
    return number * number
}
let result = squared(number: 8)
print(result)

// tuples is great for returning multiple values! ^_^
func getUser() -> (first: String, second: String) {
    return (first: "Harry", second: "Styles")
}
let user = getUser()
print(user.first)
print(user.first, user.second)
print(user.second)

//--------------------------------------------------------------------------------------------

// parameters labels
// two names for each parameters:
// one to be used externally when calling the function,
// one to be used internally inside the function
print("\n====Parameters Labels====")

func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Andira")


func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)!")
}
setAge(for: "Andira", to: 19)

//--------------------------------------------------------------------------------------------

// omitting parameters labels
// using an underscore for external parameter name
print("\n====Omitting Parameters Labels====")

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Harry")

//--------------------------------------------------------------------------------------------

// default parameters
// write an = after the parameter's type followed by the default value
print("\n====Default Parameters====")

func greeting(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")        
    } else {
        print("Oh no.. It's \(person) again.")
    }
}
greeting("Andira")
greeting("Andira", nicely: false)


func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    print("The direction \(from)-\(to) is \(route), and the route to avoid the highways is \(avoidHighways)")
}
findDirections(from: "Jakarta", to: "Bekasi")
findDirections(from: "Jakarta", to: "Bandung", route: "scenic")
findDirections(from: "Jakarta", to: "Bogor", route: "scenic", avoidHighways: true)

//--------------------------------------------------------------------------------------------

// variadic functions
// write ... after parameter's data types,
// for example: Int... means zero or more integers, potientally hundreds
print("\n====Variadic Functions====")

func squares(someNumbers: Int...) {
    for number in someNumbers {
        print("\(number) squared is \(number * number)")
    }
}
squares(someNumbers: 1, 2, 3, 4, 5)

//--------------------------------------------------------------------------------------------

// writing throwing functions
// define an enum that desc error we can throw
// write throws keyword, before their return type,
// then using throw keyword when something goes wrong
print("\n====Throwing Functions====")

enum BookErrors: Error {
    case tooFewPages
    case tooManyPages
}
func writeBook(title: String, page: Int) throws {
    switch page {
        case 0...50:
            throw BookErrors.tooFewPages
        case 51...400:
            print("Perfect! I'm going to write \(title)...")
        default:
            throw BookErrors.tooManyPages
    }
}


enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// running throwing functions: three unique keyword such as do, try, catch
// do keyword starts a section of code that might cause problems
// try keyword is used before every function that might throw an error
// catch keyword lets handle errors
do {
    try checkPassword("password")
    print("Your password is good.")
} catch {
    print("You can't use that passowrd.")
}


//--------------------------------------------------------------------------------------------

// inout parameters
// 
print("\n====inout Parameters====")


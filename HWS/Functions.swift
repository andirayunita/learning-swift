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


print("================================================")
print("\t\t\t\t Loops in Swift")
print("================================================")

// for Loops
// if don't need temporary constant, use underscore _ 
print("\n====For Loops====")
let numbers = 1...4
for number in numbers {
    print("Number is \(number).")
}

let albums = ["Take Me Home", "Up All Night", "Made in the AM"]
for album in albums {
    print("\(album) is on Spotify.")
}

print("Fakers gonna ")
for _ in 1...2 {
    print("fake.")
}

let oneDirection = ["Harry", "Liam", "Louis", "Niall"]
for _ in oneDirection {
    print("[CENSORED] is a member of 1D.")
}

for number in [2, 3, 5] {
	print("\(number) is a prime number.")
}


//--------------------------------------------------------------------------------------------

// while loops 
print("\n====While Loops====")

var numbers2 = 1

while numbers2 <= 3 {
    print(numbers2)
    numbers2 += 1
}
print("Ready or not, here I come!")


//--------------------------------------------------------------------------------------------

// repeat loops
// repeat loop is identical with while-loops; except, the condition comes at the end 
print("\n====Repeat Loops====")

while false {
    print("This is false.")   // this will never be executed
} 


repeat {
    print("This is false..")  // the code inside the loop will be executed atleast once
} while false


let oneD = ["Harry", "Louis", "Niall", "Liam"]
var random: [String]
repeat {
    random = oneD.shuffled()
    print(random)
} while random == oneD


//--------------------------------------------------------------------------------------------

// exiting loops: exit a loop anytime using break keyword
print("\n====Exiting Loops====")

var countDown = 3
while countDown >= 0 {
    print(countDown)

    if countDown == 2 {
        print("I'm bored, let's go now.")
        break
    }

    countDown -= 1
}
print("Blast off!!")


let scores = [1, 9, 4, 0, 6, 3]
var count = 0
for score in scores {
    if score == 0 {
        break
    }

    count += 1
}
print("You had \(count) scores before you got 0.")


// exiting multiple loops: using a label at outside loop, 
// then break label to exit nested loops(inner and outer loops)
print("\n====Exiting Multiple Loops====")

outerLoop: for i in 1...5 {
    for j in 1...5 {
        let product = i * j
        print("\(i) * \(j) is a product.")

        if product == 9 {
            print("It's a bulleye!")
            break outerLoop
        }
    }
}


let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]
outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
            
        }
    }
}


//--------------------------------------------------------------------------------------------

// skipping items: using continue keyword
print("\n====Skipping Items====")

for i in 1...10 {
    if i % 2 == 1 { 
        continue    //this will skip any numbers that are odd
    }

    print(i)
}


let fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
var position = 0
while position <= 7 {
	let value = fibonacci[position]
	position += 1
	if value < 2 {
	   continue   //this will skip array[0] which is 1, and array[1] which is 1
	}
	print("Fibonacci number \(position) is \(value)")
}


//--------------------------------------------------------------------------------------------

// infinite loops
// to make infinite loops, just use true as condition
print("\n====Infinite Loops====")

var counter = 0

while true {
    print(" ")  //inspired by John Cage 4'33" complete of silence
    counter += 1

    if counter == 273 {  //273 seconds = 4 minutes 33 seconds
        break
    }
}


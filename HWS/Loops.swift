print("================================================")
print("\t\t\t\t Loops in Swift")
print("================================================")

// for Loops
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
// then break label to exit both loops(inner and outer loop)
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


//--------------------------------------------------------------------------------------------

// skipping items
print("\n====Skipping Items====")


// // infinite loops
// print("\n====Infinite Loops====")


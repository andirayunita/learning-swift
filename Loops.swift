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

// // repeat loops
// print("\n====Repeat Loops====")

// // exiting loops
// print("\n====Exiting Loops====")

// // exiting multiple loops


// // skipping items
// print("\n====Skipping Items====")

// // infinite loops
// print("\n====Infinite Loops====")


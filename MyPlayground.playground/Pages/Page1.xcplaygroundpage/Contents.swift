import UIKit

var greeting = "Hello, playground"


var trafficLightColor = "Yellow"
switch trafficLightColor {
case "Red":
    print("Stop")
default:
    print("Invalid color")
}

var unWrapString: String?
var str = "Hola " + (unWrapString ?? "No value on unWrapString")

print(str)


// ranges
let myRange = 10...20
print(myRange)

// For in loop
for number in myRange {
    print(number)
}

for number in 0...5 {
    print(number)
}

for number in (0...5).reversed() {
    print(number)
}

// While loop
var y = 0
while y < 50 {
    y += 5
    print("y is \(y)")
}

// Repeat while loop
var x = 0
repeat {
    x += 5
    print("x is \(x)")
} while x < 50


// data structures
var shoppingList = ["Eggs", "Milk"]

var count = shoppingList.count
print("shoppintList has \(count) element(s)")

var isEmpty = if shoppingList.isEmpty {
    ""
} else {
    " not"
}

print("shoppingList is\(isEmpty) empty")
print("shoppingList is \(shoppingList)")

shoppingList.insert("Soy Milk", at: 1)

print("shoppingList is \(shoppingList)")

shoppingList.remove(at: 0)
print("shoppingList is \(shoppingList)")

shoppingList.append("Tuna")
shoppingList.append("Rice")

print("shoppingList is \(shoppingList)")

for (index, shoppingListItem) in shoppingList.enumerated() {
    print("In index \(index), We have \(shoppingListItem)")
}

var contactList = ["Shah" : "+60123456789", "Amir" : "+0223456789"]

print(contactList)

// Add new values
contactList["Jane"] = "+0173737332"
print(contactList)

// Update a value
contactList["Amir"] = "+111111111"
print(contactList)

// remove a value
//contactList["Jane"] = nil
//print(contactList)

// Iterate over a dictionary
for (name, contactNumber) in contactList {
    print("\(name) : \(contactNumber)")
}


// Sets
var movieGenres: Set = ["Horror", "Action", "Romantic Comedy"]
let movieGenresCount = movieGenres.count
print(movieGenresCount)
print(movieGenres)

// check if set contains an element
let containtWars = movieGenres.contains("War")


// another operations
let movieGenmres2: Set = ["Science fiction", "War", "Fantasy"]

movieGenres.union(movieGenmres2)
movieGenres.intersection(movieGenmres2)
movieGenres.subtracting(movieGenmres2)
movieGenres.symmetricDifference(movieGenmres2)


// Functions
/*
 func functionName(parameter1: ParameterType, ...) -> ReturnType {
 code
 }
 */

func serviceChange(mealCost: Int) -> Int {
    return mealCost / 10
}

let serviceChargeAmount = serviceChange(mealCost: 50)
print(serviceChargeAmount)


// Nested functions
func calculateMonthlyPayments(carPrice: Double, downPayment: Double, interestRate: Double, paymentTerm: Double) -> Double {
    
    func loanAmount() -> Double {
        return carPrice - downPayment
    }
    
    func totalInteres() -> Double {
        return interestRate * paymentTerm
    }
    
    func numberOfMonths() -> Double {
        return paymentTerm * 12
    }
    
    return ((loanAmount() + (loanAmount() * totalInteres()) / 100) / numberOfMonths())
}

calculateMonthlyPayments(carPrice: 50000, downPayment: 5000, interestRate: 3.5, paymentTerm: 7.0)


// Function as a return
func makePi() -> (() -> Double) {
    
    func generatePi() -> Double {
        return 22.0 / 7.0
    }
    
    return generatePi
}

let pi = makePi
print(pi())

// Using functions as parameter
func isthereAMatch(listOfNumbers: [Int], condition: (Int) -> Bool) -> Bool {
    for item in listOfNumbers {
        if condition(item) {
            return true
        }
    }
    
    return false
}

// parameter function
func oddNumber(number: Int) -> Bool {
    return (number % 2) > 0
}

let numberList = [2,4,6,7]
isthereAMatch(listOfNumbers: numberList, condition: oddNumber)

func buySomething(itemValueEntered itemValueField: String, cardBalance: Int) -> Int {
    guard let itemValue = Int(itemValueField) else {
        print("error in item value")
        return cardBalance
    }
    
    let remainingBalance = cardBalance - itemValue
    return remainingBalance
}

print(buySomething(itemValueEntered: "10", cardBalance: 50))
print(buySomething(itemValueEntered: "blue", cardBalance: 50))

// Closures
var testNumbers = [2,4,6,7]
let myClosure = { (number: Int) -> Int in
    let result = number * number
    return result
}

let mappdNumbers = testNumbers.map(myClosure)
print("mappdNumbers: \(mappdNumbers)")


// A shorter way to write closure
let mappedTestNumbers = testNumbers.map(
    { number in // mapped variable
        number * number // return the resul whiout "return" statement
    }
)

print("mappedTestNumbers: \(mappedTestNumbers)")

// You can refer to parameters by a number expressingtheir relative position in the list of
// arguments instead of by name, as follows
let shorterMapdTestNumbers = testNumbers.map{
    $0 * $0
}

print("shorterMapdTestNumbers: \(shorterMapdTestNumbers)")


// Classes
/*
 class ClassName {
 property1
 property2
 property3
 
 method1() {
 code
 }
 
 method2() {
 code
 }
 }
 */

class Animal {
    // properties
    var name: String = ""
    var sound: String = ""
    var numberOfLegs: Int = 0
    var breathesOxygen : Bool = true
    
    // Initalizer
    init(name: String?, sound: String?, numberOfLegs: Int?, breathesOxygen: Bool?) {
        self.name = name ?? ""
        self.sound = sound ?? ""
        self.numberOfLegs = numberOfLegs ?? 0
        self.breathesOxygen = breathesOxygen ?? false
    }
    
    // behaviour
    func makeSound() {
        print(self.sound)
    }
    
    func description() -> String {
        return "name: \(name)\nsound: \(sound)\nnumberOfLegs: \(numberOfLegs)\nbreathesOxygen: \(breathesOxygen)"
    }
}

// Instances
let cat = Animal(
    name : "Cat",
    sound : "Meow",
    numberOfLegs : 4,
    breathesOxygen : true

)
// Also I can write properties
cat.name = "Cat"
cat.sound = "Meow"
cat.numberOfLegs = 4
cat.breathesOxygen = true

// Showing properties
//print(cat.name)
//print(cat.sound)
//print(cat.numberOfLegs)
//print(cat.breathesOxygen)
//cat.makeSound()

// Subclass
class Mammal : Animal {
    let hasFurOnHair: Bool = true
    
    // Oberride description
    override func description() -> String {
        return super.description() + "\nhasFurOnHair: \(hasFurOnHair)"
    }
}

let cat2 = Mammal(name: "Cat2", sound: "Meow", numberOfLegs: 4, breathesOxygen: true)

print(cat.description())
print("\n")
print(cat2.description())

// Structs
/*
struct StructName {
    property1
    property2
    property3
    
    method1() {
        code
    }
    
    method2() {
        code
    }
}
*/

// OOP
// defining a class
class Employee {
    var name = "Undefined"
    var age = 0
    
    func changeName(newName: String, newAge: Int) {
        name = newName
        age = newAge
    }
    
    func createBadge() -> String {
        return "Employee \(name) \(age)"
    }
}

// creating an object from a class
let employee1 = Employee()
employee1.changeName(newName: "Martin", newAge: 32)
print("Name: \(employee1.name)")

// Declare a type method for a class (This is an alternative to static functions)
class Employee2 {
    var name = "Undefined"
    var age = 0
    
    class func description() {
        print("This class stores the name and age of an employee")
    }
}

Employee2.description()

// Enhiretance
class OfficeEmployee: Employee {
    var department = "Udenfined"
    
    // behaviour overriding
    override func createBadge() -> String {
        return "\(department) \(name) \(age)"
    }
}

// creating object from subclasses
let employee = OfficeEmployee()
employee.name = "George"
employee.age = 25
employee.department = "Mail"

var badge = employee.createBadge()
print("Badge: \(badge)")

class WareHouseEmployee: Employee {
    var area = "Undefined"
}

var employeeList: [Employee] = [OfficeEmployee(), WareHouseEmployee(), OfficeEmployee(), WareHouseEmployee(), OfficeEmployee(), WareHouseEmployee(), OfficeEmployee()]

// counting objects
var officeEmployeeCounter = 0
var wareHoureEmployeeCounter = 0

for obj in employeeList {
    if obj is OfficeEmployee {
        officeEmployeeCounter += 1
        continue
    }
    
    if obj is WareHouseEmployee {
        wareHoureEmployeeCounter += 1
        continue
    }
}

print("officeEmployeeCounter: \(officeEmployeeCounter)")
print("wareHoureEmployeeCounter: \(wareHoureEmployeeCounter)")



















































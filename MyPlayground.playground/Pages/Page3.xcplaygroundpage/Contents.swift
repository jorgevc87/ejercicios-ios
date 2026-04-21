import UIKit

protocol Printer {
    var name: String { set get }
}
// Extension must have same name that class which is extending
extension Printer {
    func printDescription() {
        print("name: \(name)")
    }
}

struct Employees: Printer {
    var name: String
    var age: Int
}

struct Offices: Printer {
    var name: String
    var employees: Int
}

let employee = Employees(name: "Rob", age: 63)
let office = Offices(name: "Mail", employees: 2)

employee.printDescription()
office.printDescription()

// extending basic data types
extension Int {
    func printDescription() {
        print("The number is \(self)")
    }
}

// calling the function
let number = 25
number.printDescription()

// another way of calling the function
32.printDescription()

























































































//: [Previous](@previous)

import Foundation


// Initialization
class Employee {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    convenience init() {
        self.init(name: "Undefined", age: 0)
    }
}

// heriarchy and initialization
class OfficeEmployee: Employee {
    var department: String = "Undefined"
    
    init(name: String, age: Int, department: String) {
        self.department = department
        super.init(name: name, age: age)
    }
}

let employee1 = Employee()

print("employee1: \(employee1)")


// Working with protocols
protocol Printer {
    var name: String { get set }
    func printDescription()
}

struct Employees: Printer {
    var name: String
    var age: Int
    
    func printDescription() {
        print("Description \(name) \(age)")
    }
}

struct Offices: Printer {
    var name: String
    var employees: Int
    
    func printDescription() {
        print("Description: \(name) \(employees)")
    }
}

let mEmployee1 = Employees(name: "Steve", age: 61)
let office1 = Offices(name: "Mail", employees: 2)

mEmployee1.printDescription()
office1.printDescription()

// using protocols as data types
var list: [Printer] = [mEmployee1, office1]

for element in list {
    element.printDescription()
}

// returning values of a protocol data type
func getFile(type: Int) -> Printer {
    var data: Printer!
    if type == 1 {
        data = Employees(name: "Steve", age: 61)
    }
    
    if type == 2 {
        data = Offices(name: "Mail", employees: 2)
    }
    
    return data
}

let file = getFile(type: 1)
file.printDescription()

// conforming to the equatable protocol
struct EquatableEmployees: Equatable {
    
    var name: String
    var age: Int
    
    static func == (value1: EquatableEmployees, value2: EquatableEmployees) -> Bool{
        return value1.age == value2.age
    }
}

let eqEmployee1 = EquatableEmployees(name: "Steve", age: 61)
let eqEmployee2 = EquatableEmployees(name: "Fred", age: 45)

let message = eqEmployee1 == eqEmployee2 ? "Equal" : "Different"
print("message: \(message)")

































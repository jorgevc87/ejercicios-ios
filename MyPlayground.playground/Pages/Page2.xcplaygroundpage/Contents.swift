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



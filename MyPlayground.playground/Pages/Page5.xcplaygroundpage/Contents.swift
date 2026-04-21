//: [Previous](@previous)

import Foundation

// delegating tasks
struct Salary {
    func showMoney(name: String, money: Double) {
        print("The salary of \(name) is \(money)")
    }
}

struct Employees {
    var name: String
    var money: Double
    
    var delegate: Salary
    
    func generateReport() {
        delegate.showMoney(name: name, money: money)
    }
}

let salary = Salary()
var employee1 = Employees(name: "Tom", money: 4500, delegate: salary)
employee1.generateReport()








































































































































































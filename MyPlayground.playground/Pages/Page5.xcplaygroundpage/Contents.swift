//: [Previous](@previous)

import Foundation

// protocol
protocol SalaryProtocol {
    func showMoney(name: String, money: Double)
}

// delegating tasks
struct Salary : SalaryProtocol{
    func showMoney(name: String, money: Double) {
        print("The salary of \(name) is \(money)")
    }
}

struct BasicSalary: SalaryProtocol {
    func showMoney(name: String, money: Double) {
        
        if (money > 4000) {
            print("The salary is over the minimium")
            return
        }
        
        print("The salary of \(name) is \(money)")
    }
}

struct Employees {
    var name: String
    var money: Double
    
    var delegate: SalaryProtocol
    
    func generateReport() {
        delegate.showMoney(name: name, money: money)
    }
}

let salary = Salary()
var employee1 = Employees(name: "Tom", money: 4500, delegate: salary)

employee1.delegate = BasicSalary()
employee1.generateReport()








































































































































































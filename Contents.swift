
protocol SalaryDelegate {
  func showMoney(name:String, money:Double)
}

struct Sarary: SalaryDelegate {
  func showMoney(name:String, money:Double) {
    let message = "\(name) has \(money) dollars"
    
    print(message)
  }
}

struct Salary2: SalaryDelegate {
  func showMoney(name: String, money: Double) {
    let message = "\(name) has \(money) dollars 2"
    
    print(message)
  }
}

struct Employee {
  var name: String
  var money: Double
  
  var delegate: SalaryDelegate
  
  func generateReport() {
    delegate.showMoney(name: name, money: money)
  }
    
}

let sarary = Sarary()
let employee = Employee(name: "John", money: 1000, delegate: sarary)

let sarary2 = Salary2()
let employee2 = Employee(name: "John", money: 1000, delegate: sarary2)

employee.generateReport()
employee2.generateReport()

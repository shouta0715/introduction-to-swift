class Employee {
  var name: String
  var age: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
  
  convenience init(name: String) {
    self.init(name: name, age: 0)
  }
  
  convenience init() {
    self.init(name: "un",age: 0)
  }
  
  deinit {
    let message = "\(name) is being removed from memory!"
    print(message)
  }
}

var employee:Employee? = Employee(name: "John", age: 30)
let employee2 = Employee()

employee = nil

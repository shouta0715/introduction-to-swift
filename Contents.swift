protocol Pinter {
  var name: String { get }
}

extension Pinter {
  func descriptopm() {
    let message = "My name is \(name)"
    
    print(message)
  }
}

struct Employee: Pinter {
  var name: String
}

let employee = Employee(name: "John")
employee.descriptopm()



extension Int {
  func printInt() {
   let value = "Value is \(self)"
    
    print(value)
  }
}

let number = 10

number.printInt()

struct User<T> {
  var value: T
}

extension User where T == Int {
  var valueInt: Int {
    return value
  }
  func printValue() {
    let message = "Value is \(value)"
    
    print(message)
  }
}
  
  

let user = User(value: 10)
let user2 = User(value: "Hello")


user.printValue()
//user2.printValue()


extension String.StringInterpolation {
  mutating func appendInterpolation(_ value: Int) {
    let fahrenheit = Double(value) * 9 / 5 + 32
    appendLiteral(String(fahrenheit) + "°F")
  }
}

let value = 10

let stringV = "Value is \(value)"



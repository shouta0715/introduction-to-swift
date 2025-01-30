struct Employee: Equatable {
  var name: String
  var age: Int
  
//  static func == (lhs: Employee, rhs: Employee) -> Bool {
//    return lhs.age == rhs.age
//  }
}

let employee1 = Employee(name: "John", age: 30)
let employee2 = Employee(name: "John12", age: 30)

let isEqual = employee1 == employee2

func calculateResutl<T:Numeric>(a: T, b: T) -> T {
  let result = a + b
  
  return result
}

calculateResutl(a: 2, b: 3)

struct comparaEmployee:Comparable {
  
  static func < (lhs: comparaEmployee, rhs: comparaEmployee) -> Bool {
    return lhs.age < rhs.age
  }
  
  var name: String
  var age: Int
}

let employee3 = comparaEmployee(name: "John", age: 30)
let employee4 = comparaEmployee(name: "John12", age: 342)

let isLess = employee3 < employee4


struct HashEmployee: Hashable {
  var name: String
  var age: Int
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(age)
  }
}
  

let employee5 = HashEmployee(name: "John", age: 30)

let hashValue = employee5.hashValue

  

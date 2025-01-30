
protocol Pinter {
  var name:String { get }
  func printDescription()
}

struct Employee: Pinter {
  var name: String
  var age: Int
  
  func printDescription() {
      let message = "Employee name is \(name) and age is \(age)"
    
    print(message)
  }
}

struct Student: Pinter {
  var name: String
  
  func printDescription() {
    let message = "Student name is \(name)"
      print(message)
  }
}

let list:[Pinter] = [Employee(name: "John", age: 30), Student(name: "Smith")]

for item in list {
  item.printDescription()
}

func getFile(id:Int) ->Pinter {
  var data:Pinter
  if id == 1 {
    data = Employee(name: "John", age: 30)
  } else {
    data = Student(name: "Smith")
  }
  
  return data
}

let data = getFile(id: 1)


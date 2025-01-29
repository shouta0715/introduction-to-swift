
class Employee {
  var hoge = 0
  lazy var name: String = {
    // 呼び出したタイミングで初期化処理が実行される
    let loadingMessage = "Loading name..."
    
    print(loadingMessage)
    hoge += 1
    return "John Doe"
  }()
  
  public private(set) var age: Int = 0
  
}

let employee = Employee()
employee.hoge
employee.name
employee.hoge

//Error: Cannot assign to property: 'age' setter is inaccessible
//employee.age = 30

// Created by: Tjark Ziehm
enum Errors: Error {
  case outOfStock
}
    

struct Stock {
  var totalLamps = 5
  
  mutating func sold(amount: Int) -> Result<Int, Errors> {
    guard totalLamps >= amount else {
      return .failure(Errors.outOfStock)
    }
    return .success(Int(totalLamps - amount))
  }
}
  


var stock = Stock()

let result = stock.sold(amount: 3)


//switch result {
//case .success(let stock):
//  print("Stock left: \(stock)")
//case .failure(let error):
//  if error == .outOfStock {
//    print("Sorry, we are out of stock")
//  } else {
//    print("An unknown error occured")
//  }
//}

do {
  let stock = try result.get()
  print("Stock left: \(stock)")
} catch Errors.outOfStock {
//  そのままエラーを投げる
  throw Errors.outOfStock  
}

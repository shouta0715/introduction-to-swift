// Created by: Tjark Ziehm
enum Errors: Error {
  case outOfStock
}
    

struct Stock {
  var totalLamps = 5
  
  mutating func sold(amount: Int) throws {
    if totalLamps < amount {
        throw Errors.outOfStock
    } else {
      totalLamps -= amount
    }
  }
}
  


var stock = Stock()

do {
  try stock.sold(amount: 10)
} catch Errors.outOfStock {
  let error = Errors.outOfStock
  let message = "Sorry, we only have \(stock.totalLamps) lamps left."
  
  print("\(error): \(message)")
}

try? stock.sold(amount: 10)

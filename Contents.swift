
struct Item {
  var name: String = "Not Defined"
  var price: Double = 0.0
  
  func totalPrice(quantity: Int) -> Double {
    price * Double(quantity)
  }
  
  mutating func changeName(newName: String) {
    name = newName
  }
}

struct Price {
  var USD: Double
  var CAD: Double
  
  var canadians: Double {
    get {USD * 1.25}
    set {USD = newValue / 1.25}
  }
  
  init(americans: Double) {
    USD = americans
    CAD = americans * 1.25
  }
  
  init(canadians: Double) {
    CAD = canadians
    USD = canadians / 1.25
  }
}

var price: Price = .init(canadians: 100)
var item: Item = .init(name: "Shoes", price: price.USD)


var totalPrice = item.totalPrice(quantity: 2)


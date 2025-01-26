
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

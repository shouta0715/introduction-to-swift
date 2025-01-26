// 1. Value Types

struct Item {
  var name:String = "Not Set"
  var prive:Double = 0
}

class Item2 {
  var name:String = "Not Set"
  var prive:Double = 0
}


var purchase = Item()
var classPurchase = Item2()

purchase.name = "Laptop"
purchase.prive = 1299.99

classPurchase.name = "Laptop"
classPurchase.prive = 1299.99

var purchase2 = purchase
var classPurchase2 = classPurchase

purchase2.name = "Headphones"
purchase2.prive = 299.99

classPurchase2.name = "Headphones"
classPurchase2.prive = 299.99

"Purchase: \(purchase.name) for $\(purchase.prive)"
"Purchase2: \(purchase2.name) for $\(purchase2.prive)"

"Class Purchase: \(classPurchase.name) for $\(classPurchase.prive)"
"Class Purchase2: \(classPurchase2.name) for $\(classPurchase2.prive)"


var purchase3 = Item()

let itemKeyPath = \Item.name


let itemName = purchase3[keyPath: itemKeyPath]

"Item name: \(itemName)"

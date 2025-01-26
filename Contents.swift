struct Price {
  var increment: Double = 0
  var oldprice: Double = 0
  
  var price: Double {
    willSet {
      increment = newValue - oldprice
    }
    didSet {
      oldprice = oldValue
    }
  }
}

var product = Price(price: 100)

product.price = 200

"new price: \(product.price), increment: \(product.increment) , oldprice \(product.oldprice)"
 


product.price = 300

"new price: \(product.price), increment: \(product.increment) , oldprice \(product.oldprice)"

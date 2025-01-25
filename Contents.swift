func muFunction(number:Int) -> Int {
    return number * 2
}

var myNumber = 5

myNumber = muFunction(number: myNumber)



func doubleFuction(number:Int) -> Int {
  number * 2
}

myNumber = 5

myNumber = doubleFuction(number: myNumber)


func second(value: inout Int) {
  value = value * 2
}
myNumber = 10

second(value: &myNumber)

func getDescription(value:Int)->String {
  let message = "The number is \(value)"
  
  return message
}

func getDescription(value:String)->String {
  let message = "The string is \(value)"
  
  return message
}

func genericFunction<T>(value:T)->String {
  let message = "The value is \(value)"
  
  return message
}

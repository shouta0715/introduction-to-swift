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


let aboutNumber = abs(-5)

let sequenceText = repeatElement("Hello", count: 5)
let squencesNumber = stride(from: 0, to: 10, by: 2)
let finalSequence = zip(sequenceText, squencesNumber)

for (text, number) in finalSequence {
  let message = "\(text) \(number)"
  
  print(message)
}

let myaddtion = { () -> Int in
  return 5 + 5
}()


let multi = { (number:Int, time:Int) -> Int in
  return number * time
}

let result = multi(5, 5)

func processFunction(myClosure:(Int,Int)->Int) -> Int {
  let total = myClosure(5, 5)
  
  return total
}

let total = processFunction() { (number, time) in
  return number * time + 5
}





import UIKit

// 変数
var greeting = "Hello, playground"

var myNumber = 10
myNumber = 10 * 10

var anotherNumber = 10 - 5

myNumber = myNumber * Int(10.5)

// 文字列
var myLetter:Character = "😀"

var mtText  = "Number is \(myNumber + anotherNumber)"

//let mutliLine = """aaa"""
let mutliLine = """
                aaa
                bbb
                ccc
                """

// Bool
var valid = true

//optinal

var n:Int? = 10

// tuple

var myToupe:(String, Int, Bool) = ("Hello", 10, true)

var myToupleValue = "\(myToupe.0) \(myToupe.1) \(myToupe.2)"

var myBrother = (name:"Taro", age:20, isMale:true)

var myBrotherValue = "\(myBrother.name) \(myBrother.age) \(myBrother.isMale)"

var (name, _, isMale) = myBrother

var t = "\(name) \(isMale)"

// condiftion

var age = 20
var message = ""

if age < 21 {
    message = "You are not allowed to drink"
}

var isValide = false

if isValide {
  message = "Valid"
} else {
  message = "Not valid"
}

var optionalV:Int? = 10

//if optionalV != nil {
//  let value = optionalV!
//  let content = "Value is \(value)"
//}

if let value = optionalV {
  let content = "Value is \(value)"
}


var myOptional:Int? = 10

if var myOptional {
  myOptional += 10
}

// 10
myOptional

if let value = myOptional , value == 10 {
  message = "Value is 10"

}
  
// Switch

var myValue = 10

switch myValue {
case 1:
  message = "Value is 1"
case 2:
  message = "Value is 2"
default:
  message = "Value is \(myValue)"
}


switch myValue {
case 1, 2:
  message = "Value is 1"
default:
  message = "Value is \(myValue)"
}

let numberTuple = (10, 20)

switch numberTuple {
case (10, 20):
  message = "Value is 10, 20"
default:
  message = "Value is \(numberTuple)"
}

let numberTuple2 = (10, 20)

switch numberTuple2 {
  case let (x,y) where x > y:
    message = "x is greater than y"
  case let (x,y) where x < y:
    message = "x is less than y"
  default:
    message = "x is equal to y"
    
}

switch numberTuple2 {
case  (5,20):
    message = "x is greater than y"
case (10,20):
    message = "x is less than y"
  default:
    message = "x is equal to y"
    
}


  

var switchValue: () = switch numberTuple2 {
case  (_,20):
    message = "x is greater than y"
case (10,20):
    message = "x is less than y"
  
  default:
  message = "x is equal to y"
}

// loop
var counter = 0

while counter < 10 {
  counter += 1
}

repeat {
  counter += 1
} while counter < 10

var text = "Hello"

message = ""
for char in text {
  message += message != "" ? "_" : " "
  message += "\(char)"

}

var text2 = "Hello"

for letter in text2 where letter != "e" {
  message += "\(letter)"

}
  

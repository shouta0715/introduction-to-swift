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
  

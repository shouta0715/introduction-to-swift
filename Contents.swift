
enum Number {
  case one, two, three
  
  func getMessage() -> String {
    switch self {
    case .one:
      return "one message"
    case .two:
      return "two message"
    case .three:
      return "three message"
    }
  }
}

let one = Number.one
let two = Number.two
let three = Number.three

let mynumber = Number.one

switch mynumber {
  case .one:
    print("one")
  case .two:
    print("two")
  case .three:
    print("three")
  
  
}


enum Number2: String {
  case one = "one"
  case two = "two"
  case three = "three"
}

let mynumber2 = Number2.one
let rawValue = mynumber2.rawValue

mynumber.getMessage()

enum MyCharacters {
  case number(Int, String)
  case letter(Character, String)
  
  init?(rawValue: Int) {
    switch rawValue {
    case ...9:
      self = .number(rawValue, "number")
    default:
      self = .letter("A", "letter")
    }
  }
}

var char = MyCharacters.number(1, "one")

let res:String = switch char {
  case .number(1, "one"):
    "number"
  case .number(let value, let description):
    "number: \(value) - \(description)"
  case .letter(let letter, let description):
    "letter: \(letter) - \(description)"
}

if case .number(1, "one") = char {
  let message = "number"
    
}

let n = Number2(rawValue:   "one")

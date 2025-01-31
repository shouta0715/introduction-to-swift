import Foundation


let message = "Name: John Doe"

let regex = /Name:\s+[a-zA-Z]+ [a-zA-Z]+/

if let match = message.firstMatch(of: regex) {
  let found = match.output
  
  print("Found: \(found)")
}



let matches = message.matches(of: regex)

if !matches.isEmpty {
  let names = matches.map { $0.output }
  
  let list = names.joined(separator: ", ")
  print("Found: \(list)")
}

let m = """
Apple
Banana
Cherry
Date
"""

let separator = /\n/

let results = m.replacing(separator, with: ", ")


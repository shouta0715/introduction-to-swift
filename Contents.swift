
var list:[String: String] = ["name": "John", "country": "USA", "age": "25"]

var list2 = list

list["name"] = "Tom"

list
list2




for (key, value) in list {
  let message = "Key: \(key), Value: \(value)"
  
  print(message)
}

let group = Dictionary(grouping: ["one", "two", "three", "four", "five"]) {
  $0.first!
}

var numbers: [String: Int] = [
  "one": 1,
  "two": 2,
  "three": 3,
  "four": 4,
  "five": 5
]

numbers.sorted(by: { $0.value < $1.value })


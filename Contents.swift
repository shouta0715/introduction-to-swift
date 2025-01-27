var list: [Int] = [1, 2, 3, 4, 5]


for (index, value) in list.enumerated() {
  let message = "Item \(index + 1): \(value)"
  
  print(message)
}

list.removeAll { Int in
  return Int % 2 == 0
}

let half = list.map { $0 / 2 }

var list3:Array<Array<Int>> = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

let toatl = list.reduce(0, +)

var ages:Set<Int> = [1, 2, 3, 4, 1]

let names:Set<String> = ["A", "B", "C", "D"]

for age in ages {
  let message = "Age: \(age)"
  ages.insert(5)
  let removed = ages.remove(5)
  
  print(message)
}

let isContains = names.contains("A")

let sorted = names.sorted()


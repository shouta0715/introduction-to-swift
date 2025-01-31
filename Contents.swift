import Foundation

let currentDate = Date()
let nextDate = currentDate.addingTimeInterval(60*60*24)
let nextDate2 = Date(timeIntervalSinceNow: 60*60*24)

if currentDate.compare(nextDate) == .orderedAscending {
  let message = "nextDate is in the future"
  
  print(message)
}

let calendar = Calendar.current
var components = calendar.dateComponents(
  [.year, .month, .day],
  from: currentDate
)

var components2 = DateComponents()

components2.year = 2020
components2.month = 1
components2.day = 1

let date = "\(components.year!)-\(components.month!)-\(components.day!)"

var birthday = calendar.date(from: components2)



let id  = Calendar.Identifier.gregorian
let calendar2 = Calendar(identifier: id)
var components3 = DateComponents()

components3.day = 120

var today = Date()
var appointment = calendar2.date(byAdding: components3, to: today)

var components4 = DateComponents()

components4.year = 2002
components4.month = 7
components4.day = 3

let birthday2 = calendar.date(from: components4)

if let olddate = birthday2 {
  let components = calendar.dateComponents([.day], from: olddate,to: today)
  
  let message = "It has been \(components.day!) days since my birthday"
  
  print(message)
}


let mydate = Date.now

let formatted = mydate.formatted(.dateTime.weekday(.wide))

let formatted2 = mydate.formatted(.dateTime.day().hour().minute().second())

let jsLocal = Locale(identifier: "ja_JP")
let text = mydate.formatted(.dateTime.locale(jsLocal).day().month().year())

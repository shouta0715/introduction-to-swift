import Foundation


var length = Measurement(value: 100, unit: UnitLength.meters)
var width = Measurement(value: 5, unit: UnitLength.kilometers)

let total = (length + width).converted(to: .kilometers)

length.converted(to: .kilometers)

length.formatted(.measurement(width: .wide, usage: .person))

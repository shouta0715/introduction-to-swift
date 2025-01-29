class Employee {
  var name: String = "Unknown"
  var age = 0
}

class OfficeEmployee: Employee {
  var deskNumber = 0
}

class WarehouseEmployee: Employee {
  var area = "Unknown"

}

var list: [Employee] = [OfficeEmployee(), WarehouseEmployee(),OfficeEmployee()]

//for employee in list {
//  if employee is OfficeEmployee {
//    print("Office Employee \(employee.age)")
//  } else if employee is WarehouseEmployee {
//    let warehouseEmployee = employee as! WarehouseEmployee
//    print("Warehouse Employee \(warehouseEmployee.area)")
//  } else {
//    print("Employee \(employee.age)")
//  }
//}
//

for employee in list {
  if let officeEmployee = employee as? OfficeEmployee {
    let message = "Office Employee \(officeEmployee.deskNumber)"
  } else if let warehouseEmployee = employee as? WarehouseEmployee {
    let message = "Warehouse Employee \(warehouseEmployee.area)"
  } else {
    let message = "Employee \(employee.name)"
  }
}




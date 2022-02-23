//
//  AppModel.swift
//  CalculaSalario
//
//  Created by Nikolas Gianoglou Coelho on 23/02/22.
//

import Foundation

class Model{
  var name: String
  var job: String
  var salary: Double
  var salaryAfterTaxes: String{
    get{
      return "name: \(name)" +
            "\njob: \(job)" +
            "\nFinal Salary: \(calculateFinalSalary())"
    }
  }
  
  init(_ name: String,_ job: String,_ salary: Double){
    self.name = name
    self.job = job
    self.salary = salary
  }
  
  private func calculateFinalSalary() -> Double{
    var descount: Double = 0
    var liquiqSalary: Double = 0
    switch job{
    case "Developer":
      if salary > 3000{descount = 0.2} else {descount = 0.1}
    case "DBA", "Tester":
      if salary > 2500{descount = 0.25} else {descount = 0.15}
    case "Manager":
      if salary > 7000{descount = 0.23} else {descount = 0.18}
    default:
      "This job does not exist in tou company"
    }
    
    liquiqSalary = salary - (salary * descount)
    return liquiqSalary
  }
}

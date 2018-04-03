//
//  MonthYear.swift
//  StopAndSearch
//
//  Created by edit on 21/01/2017.
//  Copyright © 2017 edit. All rights reserved.
//

import Foundation

class MonthYear: Comparable {
  
  var month: Int
  var year: Int
  
  init (month: Int, year: Int) {
    self.month = month
    self.year = year
  }
  
  init (date: String) {
    
    let index = date.index(date.startIndex, offsetBy:4)
    let year = date.substring(to: index)
    self.year = Int(year) ?? 0
    let monthStartIndex = date.index(date.startIndex, offsetBy:5)
    let monthEndIndex = date.index(date.startIndex, offsetBy: 7)
    let range = monthStartIndex..<monthEndIndex
    let month = date.substring(with: range)
    self.month = Int(month) ?? 0
  }
  
  func getMonthName() -> String {
    if (self.month <= 0)
    { return "\(Months.months[0])"}
    else
    {
    return "\(Months.months[self.month - 1])"
    }
  }
  func  getYearAsString() -> String {
    return "\(year)"
  }
  
  func getDateFormattedForApiSearch() -> String {
      let paddedMonth  = String(format: "%02d", (month))
      return getYearAsString()+"-"+paddedMonth
  }
  
  func getDateAsString() -> String {
    return "\(getMonthName()) \(year)"
  }
  
  func increment() -> MonthYear {
    
    if self.month != 12 {
      return MonthYear (month: self.month + 1, year: self.year)
    } else {
      return MonthYear(month: 1, year: self.year + 1)
    }
  }
}

func == (lhs: MonthYear, rhs: MonthYear) -> Bool {
  
  return lhs.month == rhs.month && lhs.year == rhs.year
  
}

func < (lhs: MonthYear, rhs: MonthYear) -> Bool {
  
  if lhs.year < rhs.year {
    return true
  } else if lhs.year == rhs.year && lhs.month < rhs.month {
      return true
  }
  return false
}


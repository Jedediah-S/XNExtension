//
//  Date_Extension.swift
//  JDExtension
//
//  Created by Jedediah on 2021/1/8.
//

import UIKit

public extension Date {

    static func getDateString(date: Date) -> String {
        
        return getDateString(date: date, format: "yyyy-MM-dd HH:mm:ss")
    }
    
    static func getDateString(date: Date, format: String) -> String {
        
        let dateFormatter = DateFormatter.init()
        dateFormatter.dateFormat = format
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
    
    static func getDateComponents(date: Date) -> DateComponents {
        
        let calendar = Calendar.current
        let dateComponents = calendar.dateComponents([Calendar.Component.year,Calendar.Component.month,Calendar.Component.day,Calendar.Component.weekday], from: date)
        return dateComponents
    }
}

public extension DateComponents {
    
    func dayString() -> String {
        if let day = self.day {
            if day < 10 {
                return "0\(day)"
            } else {
                return "\(day)"
            }
        } else {
            return ""
        }
    }
    
    func monthString() -> String {
        if let month = self.month {
            if month < 10 {
                return "0\(month)"
            } else {
                return "\(month)"
            }
        } else {
            return ""
        }
    }
}


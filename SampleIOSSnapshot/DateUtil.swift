//
//  DateUtil.swift
//  SampleIOSSnapshot
//
//  Created by Yukie Hori on 2017/01/18.
//  Copyright © 2017年 moko. All rights reserved.
//

import Foundation

class DateUtil {
    class func dateFromString(string: String, format: String) -> Date {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = format
        return formatter.date(from: string)!
    }
    
    class func format(_ date:Date) -> String {
        return format(date, dateStyle: .short, timeStyle: .short)
    }
    
    class func formatDate(_ date:Date) -> String {
        return format(date, dateStyle: .short, timeStyle: .none)
    }
    
    fileprivate class func format(_ date:Date, dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        return formatter.string(from: date)
    }
}

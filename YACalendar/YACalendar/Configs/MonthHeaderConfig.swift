//
//  MonthHeaderConfig.swift
//  YALCalendar
//
//  Created by Vodolazkyi Anton on 2/4/20.
//  Copyright © 2020 yalantis. All rights reserved.
//

import UIKit

open class MonthHeaderConfig {
    public var showSeparator: Bool
    public var separatorColor: UIColor
    public var formatter: DateFormatter
    
    public init(showSeparator: Bool = false, separatorColor: UIColor = UIColor(displayP3Red: 240 / 255, green: 240 / 255, blue: 240 / 255, alpha: 240 / 255), formatter: DateFormatter = {
        let formetter = DateFormatter()
        formetter.dateFormat = "MMMM"
        return formetter
    }()) {
        self.showSeparator = showSeparator
        self.separatorColor = separatorColor
        self.formatter = formatter
    }
    
    open func currentTextColor() -> UIColor {
        return UIColor(displayP3Red: 255 / 255, green: 99 / 255, blue: 0 / 255, alpha: 1.0)
    }
    open func textColor() -> UIColor {
        return .black
    }
    
    open func textAlignment() -> NSTextAlignment {
        return .left
    }
    
    open func font(for calendarType: CalendarType) -> UIFont {
        switch calendarType {
        case .oneOnOne: return UIFont.systemFont(ofSize: 18, weight: .medium)
        case .twoOnThree: return UIFont.systemFont(ofSize: 18, weight: .semibold)
        case .threeOnFour: return UIFont.systemFont(ofSize: 14, weight: .semibold)
        }
    }
}

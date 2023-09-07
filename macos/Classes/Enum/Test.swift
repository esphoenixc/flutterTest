//
//  Test.swift
//  plugin_test_1
//
//  Created by Phoenix on 2023/09/06.
//

import Foundation
import ScreenCaptureKit


struct Test {
    static let testValueInt = 7
    
    static let testValueDict = ["key": "Value", "key2": "Value"]
    
    static let testValueStr = "Test Value String 입니다"
    
    static func sayTestValue() -> String {
        return testValueStr
    }
}

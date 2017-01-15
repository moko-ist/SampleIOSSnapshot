//
//  SampleIOSSnapshotUITests.swift
//  SampleIOSSnapshotUITests
//
//  Created by Yukie Hori on 2017/01/07.
//  Copyright © 2017年 moko. All rights reserved.
//

import XCTest

class SampleIOSSnapshotUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        let app = XCUIApplication()
        snapshot("intro")
        
        app.buttons["Login"].tap()
        snapshot("login")
        
        app.navigationBars["SampleIOSSnapshot.LoginTableView"].buttons["login"].tap()
        snapshot("todo")
        
        app.tabBars.buttons["Settings"].tap()
        snapshot("settings")
    }
    
}

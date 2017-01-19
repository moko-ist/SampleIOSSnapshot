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

        app.buttons["intro_button"].tap()
        snapshot("login")
        
        app.navigationBars["SampleIOSSnapshot.LoginTableView"].buttons["login_nav_button"].tap()
        snapshot("todo")
        
        app.tables.cells.element(boundBy: 0).tap()
        snapshot("todo_detail")
  
        app.tabBars.buttons.element(boundBy: 1).tap()
        snapshot("summary")

        app.tabBars.buttons.element(boundBy: 2).tap()
        snapshot("settings")
    }
    
}

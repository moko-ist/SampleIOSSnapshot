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
        
        let tablesQuery = app.tables
        snapshot("home")
        
        tablesQuery.staticTexts["Go to the First View"].tap()
        snapshot("first_view")
        app.buttons["Button"].tap()
        
        app.navigationBars["First View"].buttons["Home"].tap()
        
        tablesQuery.staticTexts["Go to the Second View"].tap()
        snapshot("second view")
        
        app.navigationBars["Second View"].buttons["Home"].tap()
        
    }
    
}

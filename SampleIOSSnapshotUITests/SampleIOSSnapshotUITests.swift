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
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let tablesQuery = app.tables
        tablesQuery.staticTexts["Go to the First View"].tap()
        app.buttons["Button"].tap()
        app.navigationBars["First View"].buttons["Home"].tap()
        tablesQuery.staticTexts["Go to the Second View"].tap()
        app.navigationBars["Second View"].buttons["Home"].tap()
        
    }
    
}

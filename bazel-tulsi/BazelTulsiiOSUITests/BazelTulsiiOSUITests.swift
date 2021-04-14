//
//  BazelTulsiiOSUITests.swift
//  BazelTulsiiOSUITests
//
//  Created by Serhii Liamtsev on 4/12/21.
//

import XCTest

class BazelTulsiiOSUITests: XCTestCase {

    var app: XCUIApplication?
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        app?.terminate()
    }

    func testExample() throws {
        
        app = XCUIApplication()
        app?.launch()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}

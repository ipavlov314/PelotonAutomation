//
//  PelotonAutomationUITests.swift
//  PelotonAutomationUITests
//
//  Created by Gemma Barlow on 10/24/23.
//

import XCTest

final class PelotonAutomationUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}

extension PelotonAutomationUITests {

	/// 1. Confirm the text 'Peloton XCUITest Automation Challenge' is visible on the screen
	func testCorrectTitleIsVisible() {
		XCTFail("Write or record your code here")
	}

	/// 2a. Confirm the button 'Tap to Reveal' / 'Tap to Hide' is present on the screen
	/// 2b. Confirm that it is tappable, and tap it twice
	func testButtonIsPresentAndTapItTwice() {
		XCTFail("Write or record your code here")
	}

	/// 3. Confirm that when the button 'Tap to Reveal' / 'Tap to Hide' is tapped
	/// the Peloton image is 'revealed' or 'hidden'
	func testWhenButtonIsTappedImageIsRevealedOrHidden() {
		XCTFail("Write or record your code here")
	}

}

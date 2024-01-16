//
//  PelotonAutomationUITests.swift
//  PelotonAutomationUITests
//
//  Created by Gemma Barlow on 10/24/23.
//

import XCTest

final class PelotonAutomationUITests: XCTestCase {

    override func setUpWithError() throws {
		let app = XCUIApplication()
		continueAfterFailure = false
		app.launch()
    }

    override func tearDownWithError() throws {}
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

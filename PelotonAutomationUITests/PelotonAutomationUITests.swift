//
//  PelotonAutomationUITests.swift
//  PelotonAutomationUITests
//
//  Created by Gemma Barlow on 10/24/23.
//

import XCTest

final class PelotonAutomationUITests: XCTestCase {
	let app: XCUIApplication = .init()
	lazy var peloImage: XCUIElement = app.images["peloImage"]

	func testHappyPath() {
		givenLaunchApp(preconditions: [.showPeloIcon])
		peloImage.assertExistence()
	}
	
	func testNegativeCase() {
		givenLaunchApp()
		peloImage.assertExistence()
	}
	
	func testExample() {
		app.launchArguments += ["works"]
		app.launch()
		
		let newTitle = app.staticTexts["WORKS!"]
		newTitle.assertExistence()
	}
}

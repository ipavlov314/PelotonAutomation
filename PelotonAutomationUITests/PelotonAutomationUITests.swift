//
//  PelotonAutomationUITests.swift
//  PelotonAutomationUITests
//
//  Created by Gemma Barlow on 10/24/23.
//

import XCTest

final class PelotonAutomationUITests: XCTestCase {
	let app: XCUIApplication = .init()
	lazy var peloImage: XCUIElement = app.images[path(.contentAids.peloImage)]
	
	func testHappyPath() {
		givenLaunchApp(preconditions: [.showPeloIcon])
		peloImage.assertExistence()
	}
	
	func testNegativeCase() {
		givenLaunchApp()
		peloImage.assertExistence()
	}
	
	func testExample() {
		// Pass argument
		app.launchArguments += ["works"]
		app.launch()
		
		// Check for a argument
		//		ProcessInfo.processInfo.arguments.contains("works") ? "WORKS!" : "Peloton XCUITest Automation
		
		let newTitle = app.staticTexts["WORKS!"]
		newTitle.assertExistence()
	}
	
	func testPerfomanceForAssertExistence() {
		continueAfterFailure = false
		app.launch()
		
		let list = app.staticTexts.allElementsBoundByIndex
		let otherOne = app.staticTexts["other one error"]
		
		
		
		whenIMeasureExecutionTime {
			whenIUse(.softAssertion) {
				otherOne.assertExistence()
				// assert title
				// assert button 1
				// assert button 2
				// assert etc
//				list.forEach { element in element.assertExistence(isElementStatic: true) }
				otherOne.assertExistence(isElementStatic: true)
			}
		}
	}
}

// Execution time: 20.25 seconds | dynamic assert of the 12 elements and 2 failed assertions
// Execution time: 10.19 seconds | with flag isElementStatic assert of the 12 elements and 2 failed assertions

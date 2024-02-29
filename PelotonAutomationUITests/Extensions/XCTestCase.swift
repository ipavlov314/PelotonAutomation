//
//  XCTestCase.swift
//  PelotonAutomationUITests
//
//  Created by Ilia Pavlov on 2/29/24.
//

import XCTest

public extension XCTestCase {
	func givenLaunchApp(preconditions: [UITestPreconditions.ArgumentsForLaunch]) {
		XCUIApplication().givenLaunchApp(arguments: preconditions)
	}
	
	func givenLaunchApp() {
		XCUIApplication().launch()
	}
}

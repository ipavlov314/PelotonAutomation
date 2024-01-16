//
//  Element.swift
//  PelotonAutomationUITests
//
//  Created by Ilia Pavlov on 1/16/24.
//

import XCTest

public extension XCUIElement {
	
	func assertExistence(timeout: TimeInterval = 10.0, isElementStatic: Bool = false) {
		if isElementStatic {
			XCTAssertTrue(self.exists, "The element - \(self) did not exist")
		} else {
			XCTAssertTrue(self.waitForExistence(timeout: timeout), "\(self) did not exist after \(timeout) seconds")
		}
	}
}

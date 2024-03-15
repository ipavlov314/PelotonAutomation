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
	
	func path(_ id: AccessibilityIdentifying) -> String {
		id.rawValue
	}
	

	enum AssertionType {
		case hardAssertion, softAssertion
	}
	
	func whenIUse(_ type: AssertionType, action: () ->()) {
		givenSet(to: type)
		action()
		type == .hardAssertion ? givenSet(to: .softAssertion) : givenSet(to: .hardAssertion)
	}
	
	func givenSet(to types: AssertionType) {
		switch types {
		case .hardAssertion:
			continueAfterFailure = false
		case .softAssertion:
			continueAfterFailure = true
		}
	}
	
	func whenIMeasureExecutionTime(of method: () -> Void) {
		let startTime = DispatchTime.now()
		
		method() // Call the method whose execution time you want to measure
		
		let endTime = DispatchTime.now()
		let nanoTime = endTime.uptimeNanoseconds - startTime.uptimeNanoseconds
		let executionTime = Double(nanoTime) / 1_000_000_000 // Convert nanoseconds to seconds
		
		print(String(format: "Execution time: %.2f seconds", executionTime))
	}
}

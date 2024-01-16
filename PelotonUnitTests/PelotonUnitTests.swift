//
//  PelotonUnitTests.swift
//  PelotonUnitTests
//
//  Created by Ilia Pavlov on 1/16/24.
//

import XCTest
@testable import PelotonAutomation

final class PelotonUnitTests: XCTestCase {
	let sut: ContentViewModel = .init()
	
	// MARK: Test Data
	let tapToRevealText: String = "Tap to Reveal"
	let tapToHideText: String = "Tap to Hide"
	let titleText: String = "Peloton XCUITest Automation Challenge"
	let pelotonImage: String = "Peloton Logo"
	
	// MARK: Tests
	func testAssertLabels() {
		XCTAssertEqual(sut.pelotonImage, pelotonImage)
		XCTAssertEqual(sut.pelotonTitle, titleText)
	}
	
	func testAssertButtonLabels() {
		sut.imageHidden = true
		XCTAssertEqual(sut.buttonLabel, tapToRevealText)
		XCTAssertNotEqual(sut.buttonLabel, tapToHideText)
		sut.imageHidden = false
		XCTAssertEqual(sut.buttonLabel, tapToHideText)
		XCTAssertNotEqual(sut.buttonLabel, tapToRevealText)
	}
}

//
//  XCUIApplication.swift
//  PelotonAutomationUITests
//
//  Created by Ilia Pavlov on 2/29/24.
//

import XCTest

public extension XCUIApplication {
	func givenLaunchApp(arguments: [UITestPreconditions.ArgumentsForLaunch]) {
		var list: [String] = .init()
		arguments.forEach { argument in
			list.append(argument.rawValue)
			self.launchArguments += list
		}
		self.launch()
	}
}

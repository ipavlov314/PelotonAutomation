//
//  ArgumentForLaunch.swift
//  PelotonAutomationUITests
//
//  Created by Ilia Pavlov on 2/29/24.
//

import Foundation


public struct UITestPreconditions {
	public enum ArgumentsForLaunch: String {
		case showPeloIcon = "show Pelo Icon"
	}
	
	static func pass(arguments: ArgumentsForLaunch) -> Bool {
		ProcessInfo.processInfo.arguments.contains(arguments.rawValue)
	}
}

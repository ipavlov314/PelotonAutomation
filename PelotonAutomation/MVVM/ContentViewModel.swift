//
//  ContentViewModel.swift
//  PelotonAutomation
//
//  Created by Ilia Pavlov on 1/16/24.
//

import Foundation

class ContentViewModel: ObservableObject {
	#if DEBUG
	@Published var imageHidden = !UITestPreconditions.pass(arguments: .showPeloIcon)
	#else
	@Published var imageHidden = true
	#endif
	
	var pelotonTitle = ProcessInfo.processInfo.arguments.contains("works") ? "WORKS!" : "Peloton XCUITest Automation Challenge"
	var pelotonImage = "Peloton Logo"
	
	var buttonLabel: String {
		return imageHidden ? "Tap to Reveal" : "Tap to Hide"
	}
	
	func transformation() {
		imageHidden.toggle()
	}
}

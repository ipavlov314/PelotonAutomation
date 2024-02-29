//
//  ContentViewModel.swift
//  PelotonAutomation
//
//  Created by Ilia Pavlov on 1/16/24.
//

import Foundation

class ContentViewModel: ObservableObject {
	@Published var imageHidden = true
	
	var pelotonTitle = ProcessInfo.processInfo.arguments.contains("works") ? "WORKS!" : "Peloton XCUITest Automation Challenge"
	var pelotonImage = "Peloton Logo"
	
	var buttonLabel: String {
#if DEBUG
		if UITestPreconditions.pass(arguments: .showPeloIcon) {
			return imageHidden ? "Tap to Hide" : "Tap to Reveal"
		}
#endif
		return imageHidden ? "Tap to Reveal" : "Tap to Hide"
	}
	
	func transformation() {
		imageHidden.toggle()
	}
}

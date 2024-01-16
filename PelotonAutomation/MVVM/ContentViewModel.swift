//
//  ContentViewModel.swift
//  PelotonAutomation
//
//  Created by Ilia Pavlov on 1/16/24.
//

import Foundation

class ContentViewModel: ObservableObject {
	@Published var imageHidden = true
	
	var pelotonTitle = "Peloton XCUITest Automation Challenge"
	var pelotonImage = "Peloton Logo"
	
	var buttonLabel: String {
		imageHidden ? "Tap to Reveal" : "Tap to Hide"
	}
	
	func transformation() {
		imageHidden.toggle()
	}
}

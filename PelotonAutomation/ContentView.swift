//
//  ContentView.swift
//  PelotonAutomation
//
//  Created by Gemma Barlow on 10/24/23.
//

import SwiftUI

struct ContentView: View {

	@State private var imageHidden = true

    var body: some View {

		Text("Peloton XCUITest Automation Challenge")
			.font(.largeTitle)
			.accessibilityIdentifier("greeting-text")
			.padding()

		Button {
			imageHidden.toggle()
		} label: {

			Text(imageHidden ? "Tap to Reveal" : "Tap to Hide")
				.font(.title2)
				.bold()
				.tint(.black)
		}
		.padding(10)
		.frame(width: 200)
		.background(.red)
		.cornerRadius(5.0)

		if !imageHidden {
			Spacer()
			Image("Peloton Logo").resizable().scaledToFit()
		}

		Spacer()
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  PelotonAutomation
//
//  Created by Gemma Barlow on 10/24/23.
//

import SwiftUI

struct ContentView: View {
	@StateObject private var viewModel = ContentViewModel()

    var body: some View {
		Text(viewModel.pelotonTitle)
			.font(.largeTitle)
			.accessibilityIdentifier("greeting-text")
			.padding()
		Button {
			viewModel.transformation()
		} label: {
			Text(viewModel.buttonLabel)
				.font(.title2)
				.bold()
				.tint(.black)
		}
		.padding(10)
		.frame(width: 200)
		.background(.red)
		.cornerRadius(5.0)
		if !viewModel.imageHidden {
			Spacer()
			Image(viewModel.pelotonImage)
				.resizable()
				.scaledToFit()
		}

		Spacer()
    }
}

#Preview {
    ContentView()
}

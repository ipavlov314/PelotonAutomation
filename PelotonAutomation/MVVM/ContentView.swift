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
		VStack {
			ForEach(0..<10) { _ in
				Text(viewModel.pelotonTitle)
			}
			Text("other one")
		}
    }
}

#Preview {
    ContentView()
}

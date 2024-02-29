//
//  ContentAccessibilityIds.swift
//  PelotonAutomation
//
//  Created by Ilia Pavlov on 1/16/24.
//

import SwiftUI

/// This protocol represent a generic type
/// for any enums containing cases for accessibility identifiers
public protocol AccessibilityIdentifying {
	var rawValue: String { get }
}

public enum ContentAccessibilityIds: String, AccessibilityIdentifying {
	case greetingText
	case button
	case peloImage
}

public extension AccessibilityIdentifying where Self == ContentAccessibilityIds {
	static var contentAids: ContentAccessibilityIds.Type { ContentAccessibilityIds.self }
}


public extension View {
	func assignAccessibilityIdentifier(_ identifier: AccessibilityIdentifying) -> some View {
		self.accessibilityIdentifier(identifier.rawValue)
	}
}

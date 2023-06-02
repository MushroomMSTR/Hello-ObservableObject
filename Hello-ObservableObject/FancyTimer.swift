//
//  FancyTimer.swift
//  Hello-ObservableObject
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI
import Combine

class FancyTimer: ObservableObject {
	
	@Published var value: Int = 0
	
	init() {
		Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
			self.value += 1
		}
	}
	
}

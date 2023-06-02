//
//  UserSettings.swift
//  Hello-ObservableObject
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI
import Combine

class UserSettings: ObservableObject {
	
	@Published var score: Int = 0
}

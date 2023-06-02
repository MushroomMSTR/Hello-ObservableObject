//
//  ContentView.swift
//  Hello-ObservableObject
//
//  Created by NazarStf on 02.06.2023.
//

import SwiftUI

struct ContentView: View {
	
	@ObservedObject var fancyTimer = FancyTimer()
	@ObservedObject var userSettings = UserSetting()
	
    var body: some View {
        VStack {
			Text("\(self.fancyTimer.value)")
				.font(.largeTitle)
			
			Spacer()
			
			Text("\(self.userSettings.score)")
				.font(.largeTitle)
			Button("Implement Score") {
				self.userSettings.score += 1
			}

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
